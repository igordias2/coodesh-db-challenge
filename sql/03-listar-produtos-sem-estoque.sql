SELECT * 
FROM products p
WHERE NOT EXISTS (
    SELECT 1
    FROM stocks s
    WHERE s.product_id = p.product_id
)
OR p.product_id IN (
    SELECT s.product_id
    FROM stocks s
    WHERE s.quantity = 0
);