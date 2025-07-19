{{ 
    config(
        materialized='incremental',
        unique_key='id',
        on_schema_change='append_new_columns',
        incremental_strategy='merge'
    )

}}

with source_data as (
    select id, created_date
    from {{ ref('my_first_dbt_model') }}
    {% if is_incremental() %}
    where created_date >= (select max(created_date) from {{ this }})
    {% endif %}

)

select *,
    current_timestamp as inserted_at
from source_data
