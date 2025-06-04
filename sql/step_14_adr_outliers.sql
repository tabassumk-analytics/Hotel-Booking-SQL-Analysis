--To detect outliers, we use the Interquartile Range (IQR) method:
--Upper Bound = Q3 + 1.5 × (Q3 - Q1)
----q3 (max threshold) 75% of the ADR values fall.
 ----q1 (min threshold)  25% of the ADR values fall.
 
select *
from hotel_bookings 
		where adr > (
		select
		percentile_cont(0.75) within group (order by adr)+1.5 *(      
		percentile_cont(0.75) within group (order by adr)
		-percentile_cont(0.25) within group (order by adr)      
		) 
		from hotel_bookings 
		)
order by adr desc