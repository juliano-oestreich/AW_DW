with 
    stg_salesreason as (
        select *
        from {{ ref('stg_erp__salesreason') }}

    )

    , stg_sales_orderreason as (
        select * 
        from {{ ref('stg_erp__salesorderheadersalesreason') }}
    )

    ,  joined_tabelas as (
        select 
            stg_sales_orderreason.id_salesorder
            , stg_sales_orderreason.id_salesreason
            , stg_salesreason.name_sales_reason
            , stg_salesreason.reason_type

        from stg_sales_orderreason 
        left join stg_salesreason
        on stg_sales_orderreason.id_salesreason = stg_salesreason.id_salesreason

    )

    select * 
    from joined_tabelas
   