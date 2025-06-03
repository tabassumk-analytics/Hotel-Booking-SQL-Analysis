--Step 9: Analyze Stay Duration Patterns
-- average stay duration by hotel type
--(weekend + week_nights) → calculates stay duration.

select
	hotel,
	round(avg(stays_in_week_nights + stays_in_weekend_nights),2)as avg_stay_duration
from hotel_bookings
group by hotel
order by avg_stay_duration desc