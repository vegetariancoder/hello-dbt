with src_location as (
select
    *
from
    {{ ref('src_location') }})
select
    LOCALTIME_EPOCH as datetime_id,
    LOCAL_TIME as date_time,
    EXTRACT(DAY FROM LOCAL_TIME) as day,
    EXTRACT(MONTH FROM LOCAL_TIME) as month,
    EXTRACT(YEAR FROM LOCAL_TIME) as year,
    EXTRACT(HOUR FROM LOCAL_TIME) as hour,
    TO_CHAR(LOCAL_TIME, 'Day') AS weekday
from
    src_location