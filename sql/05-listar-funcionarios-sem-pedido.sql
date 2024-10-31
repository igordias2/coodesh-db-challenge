SELECT * 
FROM staffs s
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.staff_id = s.staff_id
);