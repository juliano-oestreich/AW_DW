with
    orders as (
        select 
         cast( salesorderid as int) as id_order          
         , cast(customerid as int) as idcustomer
         , cast(salespersonid as int) as idsalesman
         , cast(territoryid as int) as idterritory                
         , cast(creditcardid as int) as idcreditcard
         --datas
         , cast(orderdate as datetime) as order_date
         , cast(duedate as datetime) as due_date
         , cast(shipdate as datetime) as ship_date
         , cast(status as int) as status        
         --totais
         , cast(subtotal as numeric) as subtotal
         , cast(taxamt as numeric) as taxmt 
         , cast(freight as numeric) as freight 
         , cast(totaldue as numeric) as total
         --, cast(billtoaddressid as int) as 
         --, cast(shiptoaddressid as int) as    
         --, cast(revisionnumber as int) as
         --, cast(shipmethodid as int) as 
         --, cast(creditcardapprovalcode as int) as 
         --, cast(currencyrateid as int) as 
         --, cast(onlineorderflag as int) as 
         --, cast(purchaseordernumber as int) as 
         --, cast(accountnumber as int) as 
         --, cast(comment as int) as 
         --, cast(rowguid as int) as 
         --, cast(modifieddate as int) as 
       

        from {{ source('erp', 'salesorderheader') }}

    )

    select
     id_order          
         , idcustomer
         , idsalesman
         , idterritory                
         , idcreditcard
         --dates
         , cast(order_date as date) as order_date
         , cast(due_date as date) as due_date
         , cast(ship_date as date) as ship_date
         , status
         --totais
         , subtotal
         , taxmt
         , freight 
         , total 
    from orders