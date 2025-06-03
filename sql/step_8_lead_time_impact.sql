--Step 8: Lead Time Impact Analysis 
--lead time -how early the booking was made before arrival.
--to know the impact of the number of days between booking and check-in

select
	lead_time,
	count(*)as total_bookings,
	round(avg(adr)::numeric,2) as avg_adr,
	round(avg(adults+children+babies),2)as avg_guests
from hotel_bookings
group by lead_time
order by lead_time