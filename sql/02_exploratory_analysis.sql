-- Exploratory Analysis

-- Revenue by Market

SELECT
    Market,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM supply_chain_dataset
GROUP BY Market
ORDER BY Total_Revenue DESC;

-- Profit by Market

SELECT
    Market,
    ROUND(SUM(`Order Profit Per Order`),2) AS Total_Profit
FROM supply_chain_dataset
GROUP BY Market
ORDER BY Total_Profit DESC;

-- Revenue by Region

SELECT
    `Order Region`,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM supply_chain_dataset
GROUP BY `Order Region`
ORDER BY Total_Revenue DESC;

-- Delivery Performance by Market

SELECT
    Market,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN `Delivery Status` = 'Late delivery' THEN 1 ELSE 0 END) AS Late_Orders,
    ROUND(
        SUM(CASE WHEN `Delivery Status` = 'Late delivery' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Late_Delivery_Percentage
FROM supply_chain_dataset
GROUP BY Market
ORDER BY Late_Delivery_Percentage DESC;


-- Delivery Performance by Shipping Mode

SELECT
    `Shipping Mode`,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN `Delivery Status` = 'Late delivery' THEN 1 ELSE 0 END) AS Late_Orders,
    ROUND(
        SUM(CASE WHEN `Delivery Status` = 'Late delivery' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Late_Delivery_Percentage
FROM supply_chain_data
GROUP BY `Shipping Mode`
ORDER BY Late_Delivery_Percentage DESC;

-- Delivery Performance by Region

SELECT
    `Order Region`,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN `Delivery Status` = 'Late delivery' THEN 1 ELSE 0 END) AS Late_Orders,
    ROUND(
        SUM(CASE WHEN `Delivery Status` = 'Late delivery' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Late_Delivery_Percentage
FROM supply_chain_data
GROUP BY `Order Region`
ORDER BY Late_Delivery_Percentage DESC;

-- Revenue by Category

SELECT
    `Category Name`,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM supply_chain_dataset
GROUP BY `Category Name`
ORDER BY Total_Revenue DESC;

-- Profit by Category

SELECT
    `Category Name`,
    ROUND(SUM(`Order Profit Per Order`),2) AS Total_Profit
FROM supply_chain_dataset
GROUP BY `Category Name`
ORDER BY Total_Profit DESC;

-- Top Products by Revenue

SELECT
    `Product Name`,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM supply_chain_dataset
GROUP BY `Product Name`
ORDER BY Total_Revenue DESC
LIMIT 10;

-- Top Products by Profit

SELECT
    `Product Name`,
    ROUND(SUM(`Order Profit Per Order`),2) AS Total_Profit
FROM supply_chain_dataset
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- Revenue by Customer Segment

SELECT
    `Customer Segment`,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM supply_chain_dataset
GROUP BY `Customer Segment`
ORDER BY Total_Revenue DESC;

-- Profit by Customer Segment

SELECT
    `Customer Segment`,
    ROUND(SUM(`Order Profit Per Order`),2) AS Total_Profit
FROM supply_chain_dataset
GROUP BY `Customer Segment`
ORDER BY Total_Profit DESC;

-- Top Customers by Revenue

SELECT
    `Customer Id`,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM supply_chain_dataset
GROUP BY `Customer Id`
ORDER BY Total_Revenue DESC
LIMIT 10;

SELECT
    Market,
    ROUND(SUM(Sales),2) AS Revenue,
    ROUND(SUM(`Order Profit Per Order`),2) AS Profit,
    ROUND(
        SUM(`Order Profit Per Order`) * 100.0 /
        SUM(Sales),
        2
    ) AS Profit_Margin_Percentage
FROM supply_chain_dataset
GROUP BY Market
ORDER BY Profit_Margin_Percentage DESC;

-- Revenue by shipping mode

SELECT
    `Shipping Mode`,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM supply_chain_dataset
GROUP BY `Shipping Mode`
ORDER BY Total_Revenue DESC;

-- Monthly Revenue Trend 

SELECT
    DATE_FORMAT(
        STR_TO_DATE(
            `order date (DateOrders)`,
            '%m/%d/%Y %H:%i'
        ),
        '%Y-%m'
    ) AS Month,
    ROUND(SUM(Sales),2) AS Revenue
FROM supply_chain_dataset
GROUP BY Month
ORDER BY Month;

-- Monthly Profit Trend

SELECT
    DATE_FORMAT(
        STR_TO_DATE(
            `order date (DateOrders)`,
            '%m/%d/%Y %H:%i'
        ),
        '%Y-%m'
    ) AS Month,
    ROUND(SUM(`Order Profit Per Order`),2) AS Profit
FROM supply_chain_dataset
GROUP BY Month
ORDER BY Month;