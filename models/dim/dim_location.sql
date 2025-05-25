with src_location as (
select
    distinct
    {{ dbt_utils.generate_surrogate_key(['CITY_NAME', 'STATE_NAME']) }} AS location_id,
    *
from
    {{ ref('src_location') }})
select
    *
from
    src_location