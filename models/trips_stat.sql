select
    count(*) as trips,
    count(distinct user_id) as users,
    avg(duration_s) as avg_duration_min,
    sum(price_rub) as revenue_rub,
    count(is_free = True) / cast(count(*) as real) * 100 as free_trips_pct,
    sum(distance_m::real / 1000) as sum_distance_km
from
    {{ ref("trips_prep") }}