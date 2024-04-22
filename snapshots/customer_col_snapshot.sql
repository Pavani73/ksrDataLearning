{% snapshot customer_col_snapshot %}
    {{
        config(
            target_schema='schema',
            target_database='database',
            unique_key='field',
            strategy='check',
            invalidate_hard_deletes=False,
            check_cols=['country',  'postalcode']
        )
    }}

    select * from {{ source('sample1', 'customers') }}
 {% endsnapshot %}