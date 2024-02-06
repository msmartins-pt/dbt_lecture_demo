select 
product_id,
date,
quantity,

forecast_stock,
stock,
price

from 
{{ref("stg_lw_da_l17__raw_cc_sales")}} 
join 
{{ref("stg_lw_da_l17__raw_cc_stock")}} 
using(product_id)