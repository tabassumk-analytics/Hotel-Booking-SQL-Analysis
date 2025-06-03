--Step 7: ADR Distribution by Market Segment 
--total bookings, avg daily rate, avg night stayed(total stays per booking)
--is_canceled =0 to consider complete bookings


select 
	market_segment,
	count(*)as total_bookings,
	round(avg(adr)::numeric,2) as avg_adr,
	round(avg(stays_in_weekend_nights + stays_in_week_nights),2) as avg_night_stayed
from hotel_bookings
where is_canceled=0          
group by market_segment
order by avg_adr desc

