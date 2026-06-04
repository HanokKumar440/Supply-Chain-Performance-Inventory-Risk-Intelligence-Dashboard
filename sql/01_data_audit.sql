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