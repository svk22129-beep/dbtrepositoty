with src as (
    select
        $1::int as customer_id,
        $2::string as customer_name,
        $3::string as city,
        $4::string as state,
        $5::date as signup_date
    from {{ source('raw','customers_ext') }}
)

select * from src;
