WITH warehouse_info AS (
    SELECT warehouse_id, warehouse_alias, state
    FROM `c3w3-personal-project`.warehouse_orders.Warehouse
)

SELECT *
FROM warehouse_info