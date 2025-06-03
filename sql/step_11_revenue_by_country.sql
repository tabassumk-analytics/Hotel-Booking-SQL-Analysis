--Step 11: Revenue by Country

select
	country,
	round(sum(adr * (stays_in_weekend_nights + stays_in_week_nights))::numeric, 2) AS total_revenue
from hotel_bookings
where country is not null
group by country
order by total_revenue desc
limit 10