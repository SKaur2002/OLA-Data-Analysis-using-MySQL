Create database OLA;
use OLA;

Select * from bookings limit 10;

-- 1. Retrieve all successful bookings:
Select * from bookings where Booking_Status="Success";


-- 2. Find the average ride distance for each vehicle type:
Select Vehicle_Type, round(avg(Ride_Distance),2) as 'Average_Ride_Distance' from bookings group by Vehicle_Type;


-- 3. Get the total number of cancelled rides by customers:
Select count(*) as 'Cancelled Rides' from bookings where Booking_Status='Canceled by Driver';


-- 4. List the top 5 customers who booked the highest number of rides:
Select Customer_ID,count(Booking_ID) as Total_Rides from bookings group by Customer_ID order by Total_Rides desc limit 5; 

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select count(*) as Rides_Canceled from bookings where Canceled_Rides_by_Driver='Personal & Car related issue';

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select min(Driver_Ratings) as min_driver_ratings , max(Driver_Ratings) as max_driver_ratings from bookings where Vehicle_Type="Prime Sedan";

-- 7. Retrieve all rides where payment was made using UPI:
Select * from bookings where Payment_Method="UPI";

-- 8. Find the average customer rating per vehicle type:
Select Vehicle_Type,round(avg(Customer_Rating),2) as Avg_Customer_Rating from bookings group by Vehicle_Type order by Avg_Customer_Rating desc;

-- 9. Calculate the total booking value of rides completed successfully:
Select count(*) as Completed_Rides from bookings where Incomplete_Rides="No";

-- 10. List all incomplete rides along with the reason:
Select * from bookings where Incomplete_Rides != "No" or Incomplete_Rides is null;
Select count(*) from bookings where Incomplete_Rides != "No" or Incomplete_Rides is null;

