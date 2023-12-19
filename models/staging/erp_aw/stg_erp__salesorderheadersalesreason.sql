with 

sales_order_header as (

    select 
      cast (salesorderid as int) as id_salesorder
        , cast( salesreasonid as int) as id_salesreason
       -- , modifieddate      
     from {{ source('erp', 'salesorderheadersalesreason') }}
)

select * 
from sales_order_header
