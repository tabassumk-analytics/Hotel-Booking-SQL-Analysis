--Step 5: Cancellation Impact Analysis

select arrival_date_year,
		arrival_date_month,
		round(sum(
			case when reservation_status ='Canceled' then adr *(adults+children+babies) 
			 else 0 end)) as canceled_revenue,
		round(sum(
			case when reservation_status ='Check-Out' then adr *(adults+children+babies) 
			 else 0 end)) as actual_revenue
from hotel_bookings

group by arrival_date_year,arrival_date_month
order by arrival_date_year, 
		to_date(arrival_date_month, 'month') 
