select *
from public.products
where units_in_stock > 50
and discontinued = 0