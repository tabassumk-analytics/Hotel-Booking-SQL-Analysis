--step 2 Booking Cancellations vs Confirmations (%)
--0 = confirmed & 1= cancelled

select 
	is_canceled,
	count(*)as booking_count,
	round(100.0* count(*)/ (select count(*)from hotel_bookings),2) as percentage
from hotel_bookings
group by is_canceled
order by is_canceled
	