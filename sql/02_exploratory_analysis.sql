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