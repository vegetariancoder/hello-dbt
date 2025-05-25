{{ config(materialized='view') }}

SELECT
    w.*,
    a.SUNRISE,
    a.SUNSET,
    a.MOON_PHASE,
    a.MOON_ILLUMINATION_VALUE
FROM {{ ref('src_weather') }} w
LEFT JOIN {{ ref('src_astronomy') }} a
  ON w.location_key = a.location_key
