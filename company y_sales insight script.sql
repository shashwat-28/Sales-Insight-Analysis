
-- Revenue by market_name & sales quantity
SELECT 
    m.markets_name,
    t.market_code,
    SUM(t.sales_qty) as Sales_quantity,
    SUM(t.sales_amount) AS Total_Revenue
FROM
    transactions t
        JOIN
    markets m ON m.markets_code = t.market_code
GROUP BY t.market_code
ORDER BY Total_Revenue DESC; 


-- revenue by each customer

select c.custmer_name, c.customer_code, SUM(t.sales_amount) as Total_Revenue
from transactions t 
join customers c 
on c.customer_code = t.customer_code 
group by c.customer_code 
order by Total_Revenue DESC
LIMIT 5; 


-- Revenue generated by each product 

select p.product_code, SUM(t.sales_amount) as Total_Revenue
from transactions t 
join products p 
on p.product_code = t.product_code
group by p.product_code
order by Total_Revenue 
LIMIT 5; 


