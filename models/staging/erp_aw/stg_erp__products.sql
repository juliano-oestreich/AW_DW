with
    product as (
        select 
        cast( productid as int) as id_product
        , cast( name as string) as product_name  
        , cast( safetystocklevel as int) as stock_level     
        , cast( standardcost as numeric) as standard_cost
        , cast( listprice as numeric) as list_price              
        , cast( color as string) as product_color
        , cast( size as string) as product_size      
        , cast( weight as numeric) as product_weight
        , cast( daystomanufacture as int) as days_manufacture     
        --, cast( discontinueddate as int) as 
        --, cast( rowguid as int) as 
        --, cast( modifieddate as int) as 
        --, cast( productnumber as int) as 
        --, cast( makeflag as int) as 
        --, cast( finishedgoodsflag as int) as 
        --, cast( reorderpoint as int) as          
        --, cast( sizeunitmeasurecode as int) as 
        --, cast( weightunitmeasurecode as int) as 
        --, cast( productline as int) as 
        --, cast( class as int) as 
        --, cast( style as int) as 
        --, cast( productsubcategoryid as int) as 
        --, cast( productmodelid as int) as 
        --, cast( sellstartdate as int) as 
        ---, cast( sellenddate as int) as 

        from {{ source('erp', 'product') }}

    )

    select * 
    from product
    order by 4 desc