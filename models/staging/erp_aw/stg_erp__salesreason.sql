with sales_reason as (
    select 
       cast( salesreasonid as int) as id_salesreason
        , cast(name as string) as name_sales_reason
        , cast(reasontype  as string) as reason_type
    from {{ source('erp', 'salesreason') }}

)

select * 
from sales_reason