with 
    forma_de_pagamentos as (
        select *
        from {{ ref('stg_erp__credit_card') }}

    )

    select * 
    from forma_de_pagamentos