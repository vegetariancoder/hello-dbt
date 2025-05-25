with src_astronomy as (
select
    *
from
    {{ ref('src_astronomy') }})
select
    {{ dbt_utils.generate_surrogate_key(['CITY', 'STATE', 'SUNRISE', 'MOON_PHASE']) }} AS astronomy_id,
    SUNRISE,
    SUNSET,
    MOONRISE,
    MOONSET,
    MOON_PHASE,
    MOON_ILLUMINATION_VALUE,
    CITY,
    STATE
from
    src_astronomy