with cte as (
select
    *
from
    {{ source('telco','location') }})
select
    NAME as CITY_NAME,
    REGION,
    COUNTRY,
    LAT as LATITUDE,
    LON as LONGITUDE,
    TZ_ID,
    LOCALTIME_EPOCH,
    LOCAL_TIME
from
    cte