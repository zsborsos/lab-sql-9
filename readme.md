![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | SQL Queries 9

In this lab, you will be using the [Sakila](https://dev.mysql.com/doc/sakila/en/) database of movie rentals. You have been using this database for a couple labs already, but if you need to get the data again, refer to the official [installation link](https://dev.mysql.com/doc/sakila/en/sakila-installation.html).

The database is structured as follows:
![DB schema](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/database-sakila-schema.png)

### Instructions

We will be trying to predict if a customer will be renting a film this month based on their previous activity and other details. We will first construct a table with:

- Customer ID
- City
- Most rented film category
- Total films rented
- Total money spent
- How many films rented last month

and try to predict if he will be renting this month.
Use date range (`15/05/2005` - `30/05/2005`) for last month and (`15/06/2005` - `30/06/2005`) for this month.
