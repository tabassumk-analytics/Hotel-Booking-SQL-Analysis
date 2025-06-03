-- Step 12: Compare Weekday vs Weekend Stay Duration
-- This compares the average length of weekday stays vs weekend stays



select
    ROUND(AVG(stays_in_week_nights), 2) AS avg_weekday_stay,
    ROUND(AVG(stays_in_weekend_nights), 2) AS avg_weekend_stay
from
    hotel_bookings;