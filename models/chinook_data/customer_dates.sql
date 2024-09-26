
select{{date_comparsions('2024-12-31', '2023-01-30')}} 
from
{{ source('sample1', 'customers') }}







