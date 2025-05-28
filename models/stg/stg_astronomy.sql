with stg_astronomy as (
select
    *
from
    {{ source('telco','astronomy') }})
select
    ASTRONOMY_ID,
    SUNRISE,
    SUNSET,
    MOONRISE,
    MOONSET,
    MOON_PHASE,
    MOON_ILLUMINATION as MOON_ILLUMINATION_VALUE,
    STATE,
    CITY
    {{ add_loaded_at_column() }}
from
    stg_astronomy