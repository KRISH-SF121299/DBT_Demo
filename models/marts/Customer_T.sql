select 
    first_name,    
    last_name, 
    email, 
    phone_number 
from {{ ref('stg_customer') }}