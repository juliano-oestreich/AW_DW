with
    state as (
        select 
        cast(stateprovinceid as int) as id_state
        , cast(territoryid as int) as idterritory
        , cast(name as string) as state_name
        , cast(stateprovincecode as string) as state_code    
        , cast(countryregioncode as string) as country_code
        --, cast(isonlystateprovinceflag as int) as              
        --, cast(rowguid as int) as
        --, cast(modifieddate as int) as
        

        from {{ source('erp', 'stateprovince') }}

    )

    select * 
    from state