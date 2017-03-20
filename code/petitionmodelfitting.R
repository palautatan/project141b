#WH petition logistic model fitting, initial model
sigs<-read.csv("signatureTS.csv")

sigs$reach100<-as.numeric(sigs$id %in% unique(sigs$id[sigs$total>=100000]))

sigs_lean<-sigs[sigs$days_left>=0&sigs$total<100000,]

sigs_model1<-glm(reach100~days_left+total,family="binomial",data=sigs_lean)

sigs_model2<-glm(reach100~days_left+total+value,family="binomial",data=sigs_lean)

sigs_model3<-glm(reach100~days_left+value,family="binomial",data=sigs_lean)

sigs_lean$prob1<-sigs_model1$fitted.values
sigs_lean$prob2<-sigs_model2$fitted.values
sigs_lean$prob3<-sigs_model3$fitted.values

sigs_lean$pct_sig<-sigs_lean$total/100000
