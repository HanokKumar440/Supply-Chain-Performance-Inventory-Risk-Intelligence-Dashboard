# Data Model

## Fact Table

### FactOrders

Contains transactional order-level data including:
- Order ID
- Customer ID
- Product ID
- Sales
- Profit
- Delivery Status
- Shipping Mode

## Dimension Tables

### DimDate
- Date
- Year
- Quarter
- Month

### DimProduct
- Product ID
- Product Name
- Category

### DimCustomer
- Customer ID
- Customer Segment

### DimRegion
- Market
- Region
- Country

## Model Type

Star Schema