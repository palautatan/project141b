# Collaborators
This project, although hosted on my site, was a <b>collaborative project</b> between myself and two outstanding others.

See <b>Patrick Vacek</b>'s <a href="https://github.com/pvacek">profile</a> and <b>Graham Smith</b>'s <a href="https://github.com/Graym4c">profile</a> for data science brilliance.

# Finding Bias in Political Language
It's no secret that we live in an age of perpetual information overload. The days where most Americans would get their news from large, monolithic television networks and print outlets is long past. As of 2016, adults under the age of 50 get roughly half of their news from the internet - the single largest source being Facebook<sup><a href="#fn1">[1]</a></sup>. One would believe that the democratization of information would cause people to regress towards some mean consensus which would resemble true information.

Sadly, this has not been the case. The post-truth “alternative facts” ethos of our new Executive branch aside the American public has never been as divided as it is now. While not a perfect proxy, we can look at data involving political polarization and see that more than 60% of people find they have less in common with members of the opposite party after talking to them about politics, and 87% say that their opponents policies are actively dangerous<sup>[2]</sup>. These are not numbers you'd see from people simply differing with each other on values. These are numbers you'd expect to see from people who fundamentally disagreed on what reality they were all living in.

# Predicting Success of Petitions
The right to petition, guaranteed by the First Amendment, is supported by the We the People platform. Those who wish to petition the government for change may do so by creating a petition online through We The People. If the online petition reaches 100,000 signatures in 30 days, then the petition is to be reviewed by the White House for response.

# Our Algorithm
All that being said, it is even more critical that everyone become both involved in the political process and active consumers of information - a word here which means to be aware of the source, thoroughness, and intent behind the information. To this end our group created a two part algorithm to represent both of these goals. The first part was the construction of a logistic regression model to predict whether or not a White House Petition would hit the 100,000-signature threshold necessary for the president to be legally required to respond, based on the rate at which it receives signatures. Second was to create a classifier for determining the probability that a particular petition is 'Liberal' or 'Conservative' based on word choice. Finally, we brought these two pieces together in a generalized algorithm that looks at both signature rate over time and vocabulary to determine how likely it is that a petition will succeed.

To test our belief that our algorithm can be used in general to classify other text sources to uncover linguistic bias, we will apply our text processing algorithm to tweets from 23 political sources.

# Data Sources
Using the <a href="https://petitions.whitehouse.gov/developers">We the People API</a>, we were able to extract petition data for several hundred petitions. The information we retrieved includes:
(1) the petition ID, (2) date created, (3) deadline date, (4) petition title, (5) issues addressed, (6) petition type, (7) signature count, (8) the petition itself, and (9) the URL to the petition.

We also webscraped the 20 most recent tweets, straight from 20 political sources on Twitter. We manually compiled the URL and name of profile in the <a href="data/twitter_links.csv">twitter_links.csv</a> file.


# Project Contents
Our project has been organized into separate Jupyter notebooks. You can read through by starting with our first link, then continuing on by navigating with the "Previous" and "Next" links at the top and bottom of all of our webpages. If you have any questions, you can email us.
<ol>
<li><a href="https://github.com/palautatan/project141b/blob/master/STA%20141B%20Project%20(Data%20Exploration).ipynb">Preliminary Petition Success Model Fitting</a></li>
<li><a href="/">Exploring Language of White House Petitions</a></li>
<li><a href="/">Fitting Random Forests On Petition Language</a></li>
<li><a href="/">Applying Algorithm on Political Tweets</a></li>
<li><a href="/">Adding Language Facet to Prediction Model</a></li>
<li><a href="/">Conclusions</a></li>
</ol>
