use internship_project;

show tables;

select * from cleaned_dataset;

# ( QUERY 1 ) TOP 10 PROFITABLE PRODUCTS

SELECT Product_Name, SUM(Profit) AS total_profit
FROM cleaned_dataset
GROUP BY Product_Name
ORDER BY total_profit DESC
LIMIT 10;

# (QUERY 2 ) TOP 10 CUSTOMERS BY SALES

SELECT Customer_Name, SUM(Sales) AS total_sales
FROM cleaned_dataset
GROUP BY Customer_Name
ORDER BY total_sales DESC
LIMIT 10;

# (QUERY 3 ) REGION WISE TOTAL SALES

SELECT Region, SUM(Sales) AS total_sales
FROM cleaned_dataset
GROUP BY Region
ORDER BY total_sales DESC;

# ( QUERY 4 ) CATEGORY WISE AVERAGE PROFIT

SELECT Category, AVG(Profit) AS avg_profit
FROM cleaned_dataset
GROUP BY Category;

# (QUERY 5 ) HIGHEST DISCOUNT CATEGORY

SELECT Category, AVG(Discount) AS avg_discount
FROM cleaned_dataset
GROUP BY Category
ORDER BY avg_discount DESC
LIMIT 1;

# (QUERY 6 ) ORDERS WITH NEGATIVE PROFIT

SELECT *
FROM cleaned_dataset
WHERE Profit < 0;

# ( QUERY 7 ) MONTHLY SALES TREND

SELECT 
DATE_FORMAT(Order_Date, '%Y-%m') AS month,
SUM(Sales) AS total_sales
FROM cleaned_dataset
GROUP BY month
ORDER BY month;

# ( QUERY 8 ) MARKET-WISE REVENUE ANALYSIS

SELECT Market, SUM(Sales) AS revenue
FROM cleaned_dataset
GROUP BY Market
ORDER BY revenue DESC;

# ( QUERY 9 ) TOP-PERFORMING SUB-CATEGORIES

SELECT Sub_Category, SUM(Sales) AS total_sales
FROM cleaned_dataset
GROUP BY Sub_Category
ORDER BY total_sales DESC;

# (QUERY 10 ) SHIP MODE USAGE ANALYSIS

SELECT Ship_Mode, COUNT(*) AS usage_count
FROM cleaned_dataset
GROUP BY Ship_Mode
ORDER BY usage_count DESC;

####### TASK 3 : INSIGHTS ########

# Which Market gerenates highest revenue?
# Answer = Central Market generates the highest revenue, due to higher number of orders and strong customer demand.

# Which categories are least profitable?
# Answer = Furniture category is least profitable, because of higher discount and shipping cost impact.

# which shipping model is most commonly used?
# Answer = Standard Class shipping mode is most commonly used as it is cost-effective and widely preffered by cutsomers.



