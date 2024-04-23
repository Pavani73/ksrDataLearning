{% macro date_comparsions(date1, date2) %}

CASE

WHEN '{{date1}}' < '{{date2}}' then '{{date2}}'

WHEN '{{date1}}' > '{{date2}}' then '{{date1}}'

ELSE

'9999-12-31'

END as date_result

{% endmacro %}



