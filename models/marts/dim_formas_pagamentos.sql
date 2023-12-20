with 
    forma_de_pagamentos as (
        select *
        from {{ ref('stg_erp__forma_pagamento') }}

    )

    select * 
    from forma_de_pagamentos