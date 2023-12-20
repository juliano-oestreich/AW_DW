with
    address as (
        select 
          cast( addressid as int) as id_address
        , cast( stateprovinceid as int ) as idstate
        , cast( addressline1 as string ) as address1
        , case 
              when  addressline2 is null then 'N/A'
              else addressline2
            end as unit
        
        , cast( city as string ) as city
        
        --, cast( postalcode as int ) as
        --, cast( spatiallocation as int ) as
        --, cast( rowguid as int ) as
        --, cast( modifieddate           as int ) as

        from {{ source('erp', 'address') }}

    )

    select 
     id_address
    , idstate
    , address1 || ', ' || unit as address
    , city 
    from address
   
