with cte as (
select
    *
from
    RAW.LOCATION_DATA)
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