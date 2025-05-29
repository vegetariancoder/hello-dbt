with stg_astronomy as (
select
    *
from
    {{ ref('stg_astronomy') }})
select
    distinct
    ASTRONOMY_ID,
    SUNRISE,
    SUNSET,
    MOONRISE,
    MOONSET,
    MOON_PHASE,
    MOON_ILLUMINATION_VALUE,
    STATE,
    CITY
    {{ add_loaded_at_column() }}
from
    stg_astronomy