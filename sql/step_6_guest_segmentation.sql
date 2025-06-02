-- Step 6: Customer Segmentation by Stay Type
--if_repeated_guest =0 (New Guests) and if repeated_guest =1 (repeat Guests)


select is_repeated_guest,
	count(*) as total_bookings,
	sum(case when is_canceled = 1 then 1 else 0 end) as total_cancellations,
	round(avg(adr)::numeric,2) as avg_adr,
	sum(adr * (stays_in_weekend_nights + stays_in_week_nights)) as total_revenue
from hotel_bookings
group by is_repeated_guest
order by is_repeated_guest
