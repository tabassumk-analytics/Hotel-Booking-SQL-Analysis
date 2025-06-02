--Step 4: Revenue Analysis (Trend by Month + Year)
--Revenue = avg daily rate(adr) × total guest(adults + children + babies)

select
	arrival_date_month,
	arrival_date_year,
	round(sum(adr*(adults + children + babies)))as monthly_revenue
from hotel_bookings
group by arrival_date_month, arrival_date_year
order by arrival_date_year,
	case
	when arrival_date_month = 'January' then 1
	when arrival_date_month = 'February' then 2
	when arrival_date_month = 'March' then 3
	when arrival_date_month = 'April' then 4
	when arrival_date_month = 'May' then 5
	when arrival_date_month = 'June' then 6
	when arrival_date_month = 'July' then 7
	when arrival_date_month = 'August' then 8
	when arrival_date_month = 'September' then 9
	when arrival_date_month = 'October' then 10
	when arrival_date_month = 'November' then 11
	when arrival_date_month = 'December' then 12
	end
	
