-- -- 1. Найти заказчиков, не сделавших ни одного заказа. Вывести имя заказчика и order_id.
SELECT customers.company_name, orders.order_id
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL;

-- 2. Переписать предыдущий запрос, использовав симметричный вид джойна (подсказка: речь о LEFT и RIGHT).
SELECT customers.company_name, orders.order_id
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.customer_id IS NULL;


