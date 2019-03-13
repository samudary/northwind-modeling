{{
  config(materialized='table')
}}

with order_details as (
  select * from {{ ref('order_details') }}
),

products as (
  select * from {{ ref('products') }}
)

select
  order_details.order_id,
  order_details.unit_price as selling_price,
  order_details.quantity
from order_details
join products
on order_details.product_id = products.product_id