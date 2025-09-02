with src as (
    select
        $1::int as call_id,
        $2::int as customer_id,
        $3::timestamp_ntz as call_time,
        $4::int as duration_seconds,
        $5::string as call_type
    from {{ source('raw','calls_ext') }}
)

select * from src;
