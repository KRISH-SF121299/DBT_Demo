{% macro days_function(x) %}

        case
          when dayname(to_timestamp({{x}})) in ('Sat', 'Sun')
          then 'weekend'
          else 'weekdays'
        end 
      

{% endmacro %}

{% macro season(y) %}

        case 
            when month(to_timestamp({{y}})) in (12, 1, 2) then 'Winter'
            when month(to_timestamp({{y}})) in (3,4,5) then 'Spring'
            when month(to_timestamp({{y}})) in (6,7,8) then 'Summer'
            when month(to_timestamp({{y}})) in (9,10,11) then 'Fall'
       end 
      

{% endmacro %}