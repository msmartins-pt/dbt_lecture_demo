with 

source as (

    select * from {{ source('lw_da_l17', 'raw_cc_stock') }}

),

renamed as (

    select
        concat(model, "_" ,color, "_" ,size) as product_id,
        model,
        model_name,
        color,
        color_name,
        size,
        forecast_stock,
        stock,
        price

    from source

)

select * from renamed
