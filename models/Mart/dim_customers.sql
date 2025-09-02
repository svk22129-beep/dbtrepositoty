select distinct
    customer_id,
    customer_name,
    city,
    state,
    signup_date
from {{ ref('stg_customers') }}
