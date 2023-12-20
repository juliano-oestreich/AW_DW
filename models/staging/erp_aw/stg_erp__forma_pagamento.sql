with
    forma_de_pagamentos as (
        select 
            cast (creditcardid as int ) as id_creditcard
            , cast( cardtype as string) as card_type
            , cast( cardnumber as int) as card_number
            --, cast( expmonth as int) as 
            --, cast( expyear as int) as 
            --, cast( modifieddate as int) as 

        from {{ source('erp', 'creditcard') }}

    )

    select * 
    from forma_de_pagamentos