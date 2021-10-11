# Relational Database Keys

### Contained in this Repository:

Inside this github repository, you will find an SQL file that can be used to test and understand Relational Database Management System (DBMS) Keys. Not all of the code can be successfully run; we have intentionally included some SQL query statements that will produce and error. These errors have been notated so that the user can gain familiarity with the requirements of different keys.

Please read the following information to gain a better idea of what DBMS Keys are, why they are important, and how how they are used.

### Why do we care about relational database management systems?

* In today's data driven world every company of every size needs to manage their data. One of the best and fastest systems out there is relational databases management system.

### Why do we care about relational database keys?

![alt text](https://github.com/armantavanaa/RD_keys/blob/main/dak9ncd8lz3z2oa2dl11.jpg?raw=true)

* Database keys helps us have integrity constraints within our database, and since data integrity is critical to DBMS so too are keys.

There are three different keys that we are focusing on. These keys are:

1. Primary Key
2. Unique Key
3. Foreign Key

#### Primary Key:



#### Unique Key:

A unique key is the minimal subset of attributes that allows us to uniquely identify a tuple in our table; very similar to primary key. However there are some big differences between them. These differences are:
1. Unique key can actually be null.
2. We are allowed to have more than one unique key within a table/schema.

Now you might ask yourself, "Why do we need to have unique keys then?" This is a good question which is best explained with an example. Say we have a table for instructors with attributes:
* id
* name
* last name
* phone number
* email

In this case phone number is unique as well as email. However, these can actually be null because there might be someone who does not have a phone number and/or email. Also, in this case we need both of them to be unique key since primary keys cannot help us with that since a table is only allowed one primary key. Unique key here allows us to make sure that both phone number and email are unique and also in a case of a instructor not having a phone number or an email we will not have any problems because unique keys can take null value. This example shows us the importance of unique key.

#### Foreign Key:
