with 
    stg_orders as (
        select *
        from {{ ref('stg_erp__orders') }}

    )

    , stg_orders_details as (
        select * 
        from {{ ref('stg_erp__orders_details') }}
    )

    , joined_tables as(
        select *
        from stg_orders_details details
        left join stg_orders ord
        on details.idorder = ord.id_order

    )

select *
from joined_tables