{{
  config(
    materialized = 'incremental',
    on_schema_change='fail'
    )
}}
with src_location as (
select
    *
from
    {{ ref('src_location') }})
select
    *
from
    src_location


{% if is_incremental() %}
  AND LOCAL_TIME > (select max(LOCAL_TIME) from {{ this }})
{% endif %}