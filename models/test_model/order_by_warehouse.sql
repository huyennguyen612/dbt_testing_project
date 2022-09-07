WITH orders AS (
    SELECT *
    FROM {{ref('orders')}}
),

warehouse_name AS (
    SELECT warehouse_id, warehouse_alias, state AS warehouse_state
    FROM {{ref('warehouse')}}
)

SELECT orders.*, warehouse_name.warehouse_alias, warehouse_name.warehouse_state
FROM orders
LEFT JOIN warehouse_name
ON orders.warehouse_id = warehouse_name.warehouse_id