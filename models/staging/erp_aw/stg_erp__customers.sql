with 
    customers as (
        select 
            cast( customerid as int ) as id_customer
            , cast( personid as int ) as idperson
            , cast( storeid as int ) as idstore
            , cast( territoryid as int ) as idterritory
            --, cast( rowguid as int ) as 
            --, cast( modifieddate as int ) as 

        from {{ source('erp', 'customer') }}

    )

    select * from customers