with 
    stg_customers as (
        select *
        from {{ ref('stg_erp__customers') }}

    )

    , stg_persons as (
        select * 
        from {{ ref('stg_erp__persons') }}
    )

    , joined_tabelas as (
        select 
            id_person
            , id_customer
            , person_type
            , name
            , idstore
            , idterritory
        from stg_persons p
        left join stg_customers c
        on c.idperson = p.id_person

    )

    select * from joined_tabelas