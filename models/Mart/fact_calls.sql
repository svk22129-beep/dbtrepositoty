select
    c.customer_id,
    c.customer_name,
    s.call_id,
    s.call_time,
    s.duration_seconds,
    s.call_type
from {{ ref('stg_calls') }} s
join {{ ref('dim_customers') }} c
  on s.customer_id = c.customer_id
