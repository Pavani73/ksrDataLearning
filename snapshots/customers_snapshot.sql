{% snapshot customers_snapshot %}
    {{
        config(
            target_schema='snapshots',
            unique_key='customerid',
            strategy='timestamp',
            invalidate_hard_deletes=False,
            updated_at='updated_timestamp'
        )
    }}

    select * from {{ source('sample1', 'customers') }}
 {% endsnapshot %}
 

