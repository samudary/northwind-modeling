{{
  config(materialized='table')
}}

with orders as (
  select * from {{ ref('orders') }}
)

select ship_region, count(*)
from orders
group by 1