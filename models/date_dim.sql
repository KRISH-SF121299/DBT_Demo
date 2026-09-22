SELECT *
FROM {{ source('demo', 'weather') }}
WHERE 1 = 1
LIMIT 10;