-- Supply Chain Dataset Audit

SELECT
    COUNT(*) AS Total_Records
FROM supply_chain_data;

-- Delivery Status Distribution

SELECT
    `Delivery Status`,
    COUNT(*) AS Total_Orders
FROM supply_chain_data
GROUP BY `Delivery Status`
ORDER BY Total_Orders DESC;

-- Shipping Mode Distribution

SELECT
    `Shipping Mode`,
    COUNT(*) AS Total_Orders
FROM supply_chain_data
GROUP BY `Shipping Mode`
ORDER BY Total_Orders DESC;

-- Market Distribution

SELECT
    Market,
    COUNT(*) AS Total_Orders
FROM supply_chain_dataset
GROUP BY Market
ORDER BY Total_Orders DESC;

-- Regional Distribution

SELECT
    `Order Region`,
    COUNT(*) AS Total_Orders
FROM supply_chain_dataset
GROUP BY `Order Region`
ORDER BY Total_Orders DESC;

-- Country Distribution

SELECT
    `Order Country`,
    COUNT(*) AS Total_Orders
FROM supply_chain_dataset
GROUP BY `Order Country`
ORDER BY Total_Orders DESC;


-- Dataset Date Range

SELECT
    MIN(`order date (DateOrders)`) AS Start_Date,
    MAX(`order date (DateOrders)`) AS End_Date
FROM supply_chain_dataset;