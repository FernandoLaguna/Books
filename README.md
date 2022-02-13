# Final Project - Team 4

## Book's Recommendations Based with Machine Learning 

### Introduction

#### Selected Topic (Monse)
#### Reasons Why (Monse)
#### Source of Data Decription (Marco)

We reviewed a couple of sources trying to get enough information that may help us to understand and predict how recommendable a book is based on some of its general information. For this purpose, we reviewed the following potential sources: 

1) Good Reads: A social cataloging website (property of Amazon) where users can register books and create catalogs, reading lists, and rate books. 
2) ISBNdb: Is the world's largest book database that gathers specific information (title, author, publisher, publish date, etc.) for a vast collection of unique books. 

#### Questions to Answer

The most important question to answer is whether a new book will be succesfull, based on some characteristics that we have, such as price, number of pages, lenguage, author, publisher, etc.

### Team Management

#### Technology
- Git hub to keep record of the progress
- Python and Pandas to clean up the database
- Posgres SQL and AWS to keep the databases
- SQL to join databases
- Tableu to create dashboards  



#### Communication Protocols (Marco)

To execute this first draft, the team worked together and each one on their own, thus, we established a couple of communication forums using Slack and Whatsapp additionally to schedule some video meetings to define the plan and follow up on deliverables. 

The plan for the rest of the projects is to keep some similar communication forums to ensure we keep track of the remaining deliverables.   

### Data Base (Marco)

For this first mockup we used the Good Reads basis, our logic here is that the selected basis may contain at least: 

  - Proxy of a Recommendation: Variable we want to catalog/ forecast. 

  - Book's General Information: Variables we want to use to explain the Recommendation. 

The selected basis contains a rating per book provided by different users that may be used to generate a recommendation and it also contains general information such as Author, Category, Year of Publication & Num of Pages that may be used to explain the rating and, eventually, generate the recommendation.  

### Machine Learning Model (Francisco)
For this project, it is asked if a new book published on that year will be successful. All this in order to be able to recommend that book to any user who is looking for a new book. Taking into account that the given dataset in which columns such as: "isbn13", "published_year", "average_rating", "num_pages" and "ratings_count" are displayed; are used to carry out a logistic regression model to be able to predict if the book will be successful or not to later be recommended.

Starting from the fact that all the data from the dataset was labeled and the desired output was also known, the supervised machine learning model called Logistic Regression was chosen to predict the output. Logistic regression predicts binary outcomes, meaning that there are only two possible outcomes. In other words, a logistic regression model analyzes the available data, and when presented with a new sample, mathematically determines its probability of belonging to a class. If the probability is above a certain cutoff point, the sample is assigned to that class. If the probability is less than the cutoff point, the sample is assigned to the other class.

Taking that into account, 

##
