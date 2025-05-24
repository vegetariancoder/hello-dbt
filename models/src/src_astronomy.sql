with cte as (
select
    *
from
    RAW.ASTRONOMY_DATA)
select
    SUNRISE,
    SUNSET,
    MOONRISE,
    MOONSET,
    MOON_PHASE,
    MOON_ILLUMINATION as MOON_ILLUMINATION_VALUE,
    STATE,
    CITY
from
    cte