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
