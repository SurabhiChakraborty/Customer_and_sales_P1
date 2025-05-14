
# Customer and sales Analysis

## Project overview

This project focuses on analyzing a transactional retail sales dataset using SQL. The database simulates sales across various product categories, along with customer demographics and purchase details. The goal of the project is to extract meaningful insights using SQL to support business and marketing decisions.


## Database Structure

The project uses a single table containing transactional data with the following fields:

| Column Name       | Description                              |
|-------------------|------------------------------------------|
| `transactions_id` | Unique identifier for each sale          |
| `sale_date`       | Date of the transaction                  |
| `sale_time`       | Time when the sale occurred              |
| `customer_id`     | Unique ID of the customer                |
| `gender`          | Gender of the customer                   |
| `age`             | Age of the customer                      |
| `category`        | Product category of the purchase         |
| `quantiy`         | Quantity of products bought              |
| `price_per_unit`  | Unit price of the product                |
| `cogs`            | Cost of goods sold                       |
| `total_sale`      | Total amount of the transaction          |

## Data Analysis

1. Show the list of all transactions  
2. Which product categories had the highest sales?  
3. What is the total revenue generated from all transactions?  
4. What is the average price per unit for each category?  
5. How many transactions were made by male vs. female customers?  
6. What is the average age of customers who made purchases?  
7. Which time of day had the highest number of transactions?  
8. List top 5 customers by total purchase value  
9. What is the daily sales trend?  
10. How much quantity was sold per category?
11. Which age group contributed the most to total sales?  
12. What is the profit margin per category (total_sale - cogs)?  
13. Identify returning customers (customers with multiple transactions)  
14. Find the category with the highest average sale per transaction  
15. Analyze weekday vs. weekend sales performance


## Key Learnings

- Practiced SQL querying with real-world transactional data  
- Applied grouping, aggregation, and filtering techniques  
- Learned to derive insights from customer demographics and time-based data  
- Understood retail KPIs like total sales, COGS, and customer segmentation
