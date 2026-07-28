SELECT c.customer_id, c.customer_name 
from customers c
INNER join orders o on c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING
COUNT(CASE WHEN O.PRODUCT_NAME = 'A' THEN 1 END)>0
AND COUNT(CASE WHEN O.PRODUCT_NAME = 'B' THEN 1 END)>0
AND COUNT(CASE WHEN O.PRODUCT_NAME = 'C' THEN 1 END)=0
ORDER BY C.CUSTOMER_NAME
