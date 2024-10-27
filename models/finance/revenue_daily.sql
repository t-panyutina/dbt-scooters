select
    date,
    sum(price_rub) revenue_rub,
    {{updated_at()}}
from
    {{ref("trips_prep")}}
where
{% if is_incremental() %}
    date >= (select max(date) - interval '2 day' from {{this}})
{% else %}
    1 = 1
{% endif %}
group by
    date
order by
    date