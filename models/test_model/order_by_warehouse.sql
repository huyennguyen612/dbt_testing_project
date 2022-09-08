WITH orders_record AS (
    SELECT *
    FROM {{ref('orders_info')}}
),

warehouse_name AS (
    SELECT warehouse_id, warehouse_alias, state AS warehouse_state
    FROM {{ref('warehouse_info')}}
)

SELECT orders_record.*, warehouse_name.warehouse_alias, warehouse_name.warehouse_state
FROM orders_record
LEFT JOIN warehouse_name
ON orders_record.warehouse_id = warehouse_name.warehouse_id