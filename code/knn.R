# EDIE ESPEJO
# setwd("/Users/EDIE/Box Sync/GitThings/project141b")

# SOURCE: http://garonfolo.dk/herbert/2015/05/r-text-classification-using-a-k-nearest-neighbour-model/


# LIBRARIES
library(class)
library(tm)

# READ IN BAGS OF WORDS
wordbags = read.csv("blobs.csv", as.is=TRUE)
head(wordbags)

wordbags_simple = data.frame(wordbags$blobs, wordbags$ideology)
head(wordbags_simple)
names(wordbags_simple)

# KNN ON WORD BAGS
set.seed(141)
words = Corpus(VectorSource(wordbags_simple[,1]))

# CREATE DOCUMENT TERM MATRIX
dtm = DocumentTermMatrix(words)

# Transform dtm to matrix to data frame - df is easier to work with
mat.df = as.data.frame(data.matrix(dtm), stringsAsfactors = FALSE)

# Column bind category (known classification)
mat.df = cbind(mat.df, wordbags_simple[,2])

# Change name of new column to "category"
colnames(mat.df)[ncol(mat.df)] = "category"

# Split data by rownumber into two equal portions
train = sample(nrow(mat.df), ceiling(nrow(mat.df) * .50))
test = (1:nrow(mat.df))[- train]

# Isolate classifier
cl = mat.df[, ncol(mat.df)]

# Create model data and remove "category"
modeldata = mat.df[,!colnames(mat.df) %in% "category"]

# Create model: training set, test set, training set classifier
knn.pred = knn(modeldata[train, ], modeldata[test, ], cl[train])

# Confusion matrix
conf.mat = table("Predictions" = knn.pred, Actual = cl[test])
conf.mat

# Accuracy
(accuracy = sum(diag(conf.mat))/length(test) * 100)

# Create data frame with test data and predicted category
df.pred = cbind(knn.pred, modeldata[test, ])
write.table(df.pred, file="knn_output.csv", sep=";")
