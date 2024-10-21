with
    date_age_cte as (
        select
            date,
            extract(year from date) - extract(year from u.birth_date) as age,
            price_rub
        from
            {{ref("trips_prep")}} as t
            inner join scooters_raw.users as u on t.user_id = u.id
    )
        select
            date,
            age,
            count(*) as trips,
            sum(price_rub) as revenue_rub
        from
            date_age_cte
        group by
            1,
            2