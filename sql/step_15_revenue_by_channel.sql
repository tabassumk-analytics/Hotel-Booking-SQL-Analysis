--Step 15: Revenue by Distribution Channel
--revenue = adr × (stays_in_week_nights + stays_in_weekend_nights)
--is_Canceled = 0 (complete booking)

select 
	distribution_channel,
	round(sum(adr *(stays_in_week_nights + stays_in_weekend_nights))::numeric,2) as total_revenue
from hotel_bookings
where is_canceled = 0
group by distribution_channel
order by total_revenue desc