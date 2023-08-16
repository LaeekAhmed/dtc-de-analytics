{{ config(materialized='table') }} -- tables are more efficient for use with BI tools


select
    locationid,
    borough,
    zone,
    replace(service_zone,'Boro','Green') as service_zone
    -- ↪ replace occurances of "Boro" in the service_zone column with "Green" :
from {{ ref('taxi_zone_lookup') }}