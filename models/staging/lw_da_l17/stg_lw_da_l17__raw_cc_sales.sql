with 

source as (

    select * from {{ source('lw_da_l17', 'raw_cc_sales') }}

),

renamed as (

    select
        date_date,
        product_id,
        quantity

    from source

)

select * from renamed
