with cte as (
select
    *
from
    {{ source('telco','location') }})
select
    {{ dbt_utils.generate_surrogate_key(['NAME', 'REGION']) }} AS location_key,
    NAME as CITY_NAME,
    REGION as STATE_NAME,
    COUNTRY,
    LAT as LATITUDE,
    LON as LONGITUDE,
    TZ_ID,
    LOCALTIME_EPOCH,
    LOCAL_TIME
from
    cte