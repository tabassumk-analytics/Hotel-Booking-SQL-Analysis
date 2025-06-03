-- Step 13: Analyze Special Requests Impact
-- Total bookings, cancellations, ADR, and revenue by number of special requests

Select
    total_of_special_requests,
    count(*) AS total_bookings,
    SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS total_cancellations,
    ROUND(AVG(adr)::numeric, 2) AS avg_adr,
    SUM(adr * (stays_in_week_nights + stays_in_weekend_nights)) AS total_revenue
From hotel_bookings
Group BY total_of_special_requests
Order BY total_of_special_requests;
