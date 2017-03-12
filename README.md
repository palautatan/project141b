# White House Petitions
We have two overall goals (1) of comparing language between petitions to classify whether petitions are liberal, neutral, or conservative and (2) to predict the success of a petition given the variables we were able to acquire through the We The People API. We will be pursuing these goals in Python 2 and R.

## We the People
Source: https://petitions.whitehouse.gov/about

The right to petition, guaranteed by the First Ammendment, is supported by the We the People platform. Those who wish to petition the government for change may do so by creating a petition online through We The People. If the online petition reaches 100,000 signatures in 30 days, then the petition is to be reviewed by the White House for response.

## The Dataset
Source: https://petitions.whitehouse.gov/developers

Using the We the People API, we were able to extract petition data for several hundred petitions. The information we retrieved includes:
(1) the petition ID, (2) date created, (3) deadline date, (4) petition title, (5) issues addressed, (6) petition type, (7) signature count, (8) the petition itself, and (9) the URL to the petition.

## Natural Language Processing
In order to classify petitions, we implemented a natural language processing pipeline in based on our choice of informed stopwords. We used the RandomForestClassifier from scikit-learn.

## Predictive Modeling
We will be using evidence from the variables in our dataset to predict whether or not a petition will be successfully brought up to the White House for adminsitrative review.
