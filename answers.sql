Question 1 
-- Assuming table ProductDetail(orderID INT, customerName TEXT, products TEXT)
SELECT
  orderID,
  customerName,
  TRIM(product) AS product
FROM (
  SELECT
    orderID,
    customerName,
    UNNEST(STRING_TO_ARRAY(products, ',')) AS product
  FROM ProductDetail
) AS normalized;

Question 2
-- Step 1: Create Orders table
SELECT DISTINCT
  orderID,
  customerName
FROM OrderDetails;

-- Step 2: Create OrderItems table
SELECT
  orderID,
  product,
  quantity
FROM OrderDetails;
