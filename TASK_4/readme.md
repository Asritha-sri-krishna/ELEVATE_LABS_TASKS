# Task 4 – SQL for Data Analysis

## 📌 Objective
Use SQL queries to extract and analyze data from a database to gain insights into customer behavior, orders, and product performance.

## 🛠 Tools Used
- **Database**: MySQL  
- **Dataset**: `Ecommerce_SQL_Database`  
- **SQL Features Used**: `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, `JOINS`, `Subqueries`, `Aggregate Functions`, `Views`, `Indexes`.

## 📂 Dataset
The dataset simulates an **E-commerce system** with the following key tables:
- `customers` – Customer details such as name, country.
- `orders` – Order transactions linked to customers.
- `products` – Product catalog.
- `order_items` – Order details for each product in an order.

## 📜 Queries Implemented
1. **Basic Filtering & Sorting**  
   Retrieve all customers from India ordered by name.

2. **Aggregations with GROUP BY**  
   Count total orders and total spending per customer.

3. **INNER JOIN**  
   List all orders with customer names and product details.

4. **LEFT JOIN**  
   Show all customers and their orders (if any).

5. **RIGHT JOIN**  
   Show all products and the orders they appear in.

6. **Subqueries**  
   Find customers who spent more than the average order amount.

7. **Aggregate Functions**  
   Find average, maximum, and minimum order amounts.

8. **Views**  
   Create a view for top-selling products.

9. **Indexes**  
   Add indexes to improve query performance.

## 📊 Query Summary Table
| Query No. | Description | Expected Output |
|-----------|-------------|----------------|
| 1 | Customers from India | List of Indian customers sorted by name |
| 2 | Total orders & spending per customer | Customer name, total orders, total spent |
| 3 | Orders with product details | Order ID, customer name, product, quantity, price |
| 4 | Customers with or without orders | All customers and their order IDs |
| 5 | Products with orders | Product list and associated orders |
| 6 | High-spending customers | Customers whose spend > average |
| 7 | Order amount stats | AVG, MAX, MIN order amounts |
| 8 | Top-selling products view | Product name, total sales |
| 9 | Index creation | Improves search & join performance |

## 📷 Screenshots
Screenshots of query results are available .
## 🚀 Outcome
This task helped in:
- Understanding SQL query structuring.
- Practicing joins, aggregations, and subqueries.
- Creating reusable views.
- Applying indexing for performance optimization.
