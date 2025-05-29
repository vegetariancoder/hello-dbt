with stg_location as (
select
    *
from
    {{ ref('stg_location') }})
select
    distinct
    CITY_NAME,
    STATE_NAME,
    COUNTRY,
    LATITUDE,
    LONGITUDE,
    TZ_ID,
    LOCALTIME_EPOCH,
    LOCAL_TIME
    {{ add_loaded_at_column() }}
from
    stg_location