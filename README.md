# Final Project - Team 4

## Book's Recommendations Based with Machine Learning 

### Introduction

### Glosary

Successful = Recommendable

SQL = Structured Query Language

#### Selected Topic
Books recommendation

#### Reasons Why 

We want to rank whether a book can be recommended to read or not based on some characteristics of the books. 

#### Source of Data Decription 

We reviewed a couple of sources trying to get enough information that may help us to understand and predict how recommendable a book is based on some of its general information. For this purpose, we reviewed the following potential sources: 

1) Good Reads: A social cataloging website (property of Amazon) where users can register books and create catalogs, reading lists, and rate books. 
2) ISBNdb: Is the world's largest book database that gathers specific information (title, author, publisher, publish date, etc.) for a vast collection of unique books. 

#### Questions to Answer

The most important question to answer is whether a new book will have a high-rating, based on some characteristics that the user may consider to rate.

#### Technology

- We have used git hub to keep record of the progress.
- We have used python and pandas to clean up the database.
- We will use posgres SQL and AWS to keep the databases.
- We will use SQL to join databases.
- We will use tableu to create dashboards. 


#### Communication Protocols 

To execute this first draft, the team worked together and each one on their own, thus, we established a couple of communication forums using Slack and Whatsapp additionally to schedule some video meetings to define the plan and follow up on deliverables. 

The plan for the rest of the projects is to keep some similar communication forums to ensure we keep track of the remaining deliverables.   

### Data Base 

For this first mockup we used the Good Reads basis, our logic here is that the selected basis may contain at least: 

  - Proxy of a Recommendation: Variable we want to catalog/ forecast. 

  - Book's General Information: Variables we want to use to explain the Recommendation. 

The selected basis contains a rating per book provided by different users that may be used to generate a recommendation and it also contains general information such as ISBN, author, category, year of publication & num of pages that may be used to explain the rating and, eventually, generate the recommendation.  

By explaining the rating variable:

0 - 4.5: The book has a bad score, since according to the user the reading was not very interesting and may even be nothing interesting.

> 4.5: The book has a good score, since according to the user the reading was interesting, entertaining or fun.


### Machine Learning Model 

For this project, it is asked if a new book published on that year will be successful. All this in order to be able to recommend that book to any user who is looking for a new book. Taking into account that the given dataset in which columns such as: "isbn13", "published_year", "average_rating", "num_pages" and "ratings_count" are displayed; those variables were used to carry out a logistic regression model to be able to predict if the book will be successful or not to later be recommended.

Starting from the fact that all the data from the dataset was labeled and the desired output was also known, the supervised machine learning model called Logistic Regression was chosen to predict the output. Logistic regression predicts binary outcomes, meaning that there are only two possible outcomes. In other words, a logistic regression model analyzes the available data, and when presented with a new sample mathematically determines its probability of belonging to a class. If the probability is above a certain cutoff point, the sample is assigned to that class. If the probability is less than the cutoff point, the sample is assigned to the other class.

Taking that into account, the dataset was imported and an if-else statement was made to classify the average_rating column whether if the book has a "Low_Rating" or a "High_Rating", all this to make a binary outcome possible for the Logistic Regression. It was taken into account that for a book to be classified as recommendable, it must have at least an average rating of 4.5 to be seen as a good book to recommend, if it is below 4.5 it will not be considered a book to recommend. The classification was added in a new column in the dataframe called "rating_classification".

![](https://github.com/FernandoLaguna/Team-4-final-project/blob/Francisco_Diaz/Resources/Classification.png) 

- Figure 1. Dataframe with the actualized column called "rating_classification".

Then, the binary classification was converted to binary numbers. If the book was classified as "High_Rating" it will be assigned the number "1" and if the book was classified as "Low_Rating" it will be assigned the number "0".

![](https://github.com/FernandoLaguna/Team-4-final-project/blob/Francisco_Diaz/Resources/Binary_classification.png)

- Figure 2. conversion of string classification to binary classification.

Subsequently, the data was preprocessed, the Features (X = "isbn13", "published_year", "average_rating", "num_pages" and "ratings_count") were separated from the Target (y = rating) and the data was splitted into training and testing; to create the logistic regression model with the arguments to use.

![](https://github.com/FernandoLaguna/Team-4-final-project/blob/Francisco_Diaz/Resources/Model.png)

- Figure 3. Implemented Logistic Regression model.

Finally, the accuracy of the model was measured using the sklearn function accuracy_score

![](https://github.com/FernandoLaguna/Team-4-final-project/blob/Francisco_Diaz/Resources/Output.png)

- Figure 4. Accuracy Score.

Taking into account that the accuracy score is simply the percentage of predictions that are correct. In this case, the model's accuracy score was 0.9816, meaning that the model was correct 98.16% of the time.

##
