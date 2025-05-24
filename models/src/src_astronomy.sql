with cte as (
select
    *
from
    {{ source('telco','astronomy') }})
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