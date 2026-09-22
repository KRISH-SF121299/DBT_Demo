select rideable_type, 
       started_at, 
       to_date(to_timestamp(started_at)) as date,
       to_time(to_timestamp(started_at)) as time,
       dayname(to_timestamp(started_at)) as day_name,
       {{days_function('started_at')}} as dayss,
       month(to_timestamp(started_at)) as month,
       monthname(to_timestamp(started_at)) as month_name,
       {{season('started_at')}} as season


from {{ source('demo', 'bike') }}

