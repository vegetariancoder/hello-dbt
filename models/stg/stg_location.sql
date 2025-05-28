with stg_location as (
select
    *
from
    {{ source('telco','location') }})
select
    LOCATION_ID,
    NAME as CITY_NAME,
    REGION as STATE_NAME,
    COUNTRY,
    LAT as LATITUDE,
    LON as LONGITUDE,
    TZ_ID,
    LOCALTIME_EPOCH,
    LOCAL_TIME
    {{ add_loaded_at_column() }}
from
    stg_location