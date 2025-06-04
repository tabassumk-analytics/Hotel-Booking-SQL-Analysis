--Step 16: Booking Trends by Channel
--to identify seasonal strengths for each channel

SELECT
    distribution_channel,
    arrival_date_year,
    arrival_date_month,
    COUNT(*) AS monthly_bookings
FROM hotel_bookings
WHERE is_canceled = 0
GROUP BY distribution_channel, arrival_date_year, arrival_date_month
ORDER BY distribution_channel, arrival_date_year, 
         CASE
            WHEN arrival_date_month = 'January' THEN 1
            WHEN arrival_date_month = 'February' THEN 2
            WHEN arrival_date_month = 'March' THEN 3
            WHEN arrival_date_month = 'April' THEN 4
            WHEN arrival_date_month = 'May' THEN 5
            WHEN arrival_date_month = 'June' THEN 6
            WHEN arrival_date_month = 'July' THEN 7
            WHEN arrival_date_month = 'August' THEN 8
            WHEN arrival_date_month = 'September' THEN 9
            WHEN arrival_date_month = 'October' THEN 10
            WHEN arrival_date_month = 'November' THEN 11
            WHEN arrival_date_month = 'December' THEN 12
         END;
