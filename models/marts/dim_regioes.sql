with 
    stg_address as (
        select *
        from {{ ref('stg_erp__address') }}

    )

    , stg_state as (
        select * 
        from {{ ref('stg_erp__state') }}
    )

    , stg_country as (
        select * 
        from {{ ref('stg_erp__country') }}
    )

    , joined_tables as ( 
        select 
        a.id_address
        , s.id_state
        , s.idterritory
        , a.address
        , a.city      
        , s.state_name
        , s.state_code
        , s.country_code    
        , c.country_name

        from stg_address a 
        left join stg_state s 
        on a.idstate = s.id_state
        left join stg_country c
        on s.country_code = c.country_code

    )

    select * 
    from joined_tables