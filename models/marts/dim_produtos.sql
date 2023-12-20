with 
    product as (
        select *
        from {{ ref('stg_erp__products') }}

    )

    select * 
    from product