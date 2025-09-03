# 📊 Task 6: Sales Trend Analysis  

## 🎯 Objective  
Analyze **monthly revenue** and **order volume** using SQL aggregations.  

## 🛠️ Tools  
MySQL | GitHub  

## 📂 Dataset  
Table: `online_sales` (100 rows)  
- 🆔 order_id  
- 📅 order_date  
- 💰 amount  
- 📦 product_id  

## 🔑 What I Did  
- ➕ SUM(amount) → total revenue  
- 🔢 COUNT(DISTINCT order_id) → order volume  
- 📆 GROUP BY year, month  
- 📑 ORDER BY → sorting  
- 🎯 WHERE → filter by time  

## 📊 Sample Output  

| Year | Month | Revenue   | Orders |
|------|-------|-----------|--------|
| 2024 | 1     | 15200.00  | 25     |
| 2024 | 2     | 18430.00  | 28     |
| 2024 | 3     | 21700.00  | 30     |




