{% test count_validation(model, column_name) %}

{{ 
    config(
         severity = 'warn' 
        )

}}

with validation as

( select {{column_name}} as count_column 
from {{model}} )
,
Validation_error as
( 
    select count_column from validation where count_column > 10 
)

select * from Validation_error

{% endtest %}







