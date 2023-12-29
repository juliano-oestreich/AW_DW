with
    orders_details as (
        select 
        cast( salesorderdetailid as int) as id_orderdetail
        , cast( salesorderid as int) as idorder
        , cast( productid as int) as idproduct
       --quantidade
        , cast( orderqty as int) as order_qtd 
        , cast( unitprice as numeric) as unit_price
        , cast( unitpricediscount as numeric) as unit_price_discount
        -- , cast( specialofferid as int) as
        -- , cast( carriertrackingnumber as int) as
        --, cast( rowguid as int) as
        --, cast( modifieddate as int) as     
       

        from {{ source('erp', 'salesorderdetail') }}

    )

    select
     *
    from orders_details