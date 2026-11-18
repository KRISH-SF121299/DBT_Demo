{% macro substr_column(x) %}

    replace({{x}}, substr({{x}}, 1,5), '####')

{% endmacro %}