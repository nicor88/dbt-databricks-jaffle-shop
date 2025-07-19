{{ 
    config(
        materialized='table'
    ) 

}}

with source_data as (

    select 1 as id, '2025-01-01'::date as created_date
    union all
    select 2 as id, '2025-01-02'::date as created_date
    union all
    select 3 as id, '2025-01-03'::date as created_date

)

select *
from source_data
