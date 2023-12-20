with 
    persons as (
        select 
             cast(businessentityid as int ) as id_person
            , cast(persontype as string ) as person_type                      
            , cast(firstname as string ) || ' ' || cast(lastname as string ) as name
            --, cast(middlename as string ) as m
            --, cast(lastname as string ) as l
            --, cast(namestyle as int ) as name_style  
            --, cast(title as int ) as 
            --, cast(suffix as int ) as 
            --, cast(emailpromotion as int ) as 
            --, cast(additionalcontactinfo as int ) as 
            --, cast(demographics as int ) as 
            --, cast(rowguid as int ) as 
             --  modifieddate          

        from {{ source('erp', 'person') }}

    )

    select * from persons