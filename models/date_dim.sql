SELECT *
FROM {{ source('demo', 'weather') }}
LIMIT 10