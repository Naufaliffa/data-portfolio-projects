-- Product Performance Analysis

--Top Performing products
SELECT
  p.name AS product_name,
  p.brand,
  c.name AS category,
  p.price,
  COALESCE(SUM(oi.quantity), 0) AS units_sold,
  COALESCE(SUM(oi.total_price), 0) AS total_revenue, --6
  COALESCE(COUNT(DISTINCT oi.id), 0) AS orders_count,
  ROUND(COALESCE(SUM(oi.total_price), 0) / NULLIF (SUM(oi.quantity), 0), 2) AS avg_selling_price,
  ROUND((p.price - p.cost) / p.price * 100,2) AS profit_margin_precentage
FROM products AS p
LEFT JOIN categories c ON p.category_id = c.id
LEFT JOIN order_items oi ON p.id = oi.product_id
LEFT JOIN orders o ON oi.order_id = o.id AND o.status = 'delivered'
WHERE p.is_active = true
GROUP BY p.id, p.name, p.brand, c.name, p.price, p.cost
HAVING COALESCE(SUM(oi.quantity), 0) > 0
ORDER BY total_revenue desc
LIMIT 10;

-- Category Performance
SELECT
  c.name AS category,
  COUNT(DISTINCT p.id) AS product_count,
  COALESCE(SUM(oi.quantity), 0) AS units_sold,
  COALESCE(ROUND(SUM(oi.total_price)::numeric, 2), 0) AS total_revenue,
  COALESCE(ROUND(AVG(oi.unit_price)::numeric, 2), 0) AS avg_price,
  ROUND(
    COALESCE(SUM(oi.total_price), 0) * 100.0/
    SUM(SUM(oi.total_price)) OVER(), 2
  ) AS revenue_percentage
FROM categories c
LEFT JOIN products p ON c.id = p.category_id
LEFT JOIN order_items oi ON p.id = oi.product_id
LEFT JOIN orders o ON oi.order_id = o.id AND o.status = 'delivered'
GROUP BY c.id, c.name 
ORDER BY total_revenue DESC;
