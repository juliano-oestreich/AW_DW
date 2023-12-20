with
    country as (
        select 
        cast (countryregioncode as string) as country_code
        , cast (name as string) as country_name
        --modifieddate           

        from {{ source('erp', 'countryregion') }}

    )

    select * 
    from country