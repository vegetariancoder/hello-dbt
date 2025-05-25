with cte as (
select
    *
from
    {{ source('telco','astronomy') }})
select
    {{ dbt_utils.generate_surrogate_key(['STATE', 'CITY']) }} AS location_key,
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