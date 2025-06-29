select * from Bengaluru_Rides_Data
use ola


--1.	Retrieve all successful bookings:
create view successful_booking as 
select * from Bengaluru_Rides_Data as bd
where bd.booking_status='Success'


select * from successful_booking

--2.	Find the average ride distance for each vehicle type:
create view average_ride_distanceee as 
select avg(bd.ride_distance) as avg_distance ,vehicle_type from Bengaluru_Rides_Data as bd 
group by vehicle_type

--2.	Find the average ride distance for each vehicle type:
select * from average_ride_distanceee



--3.	Get the total number of cancelled rides by customers:
create view cancelled_ridess_customer as 
select count(cancelled_rides_by_customer) as total_cancel_rides from Bengaluru_Rides_Data
where cancelled_rides_by_customer=1

select * from cancelled_ridess_customer


--4.	List the top 5 customers who booked the highest number of rides:
create view highest_number_ridess as
SELECT  top 5 Customer_ID, COUNT(Booking_ID) as total_rides FROM Bengaluru_Rides_Data GROUP BY
Customer_ID ORDER BY total_rides DESC ;

select * from highest_number_ridess


--5.	Get the number of rides cancelled by drivers due to personal and car-related issues:
create view rides_cancelledd as
SELECT COUNT(*) as rides_cancelled_by_driver FROM Bengaluru_Rides_Data 
WHERE reason_for_cancelling_by_Driver = 'Personal & Car related issues';

select * from rides_cancelledd


--6.	Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view driver_ratingss as
select MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM Bengaluru_Rides_Data
WHERE Vehicle_Type = 'Prime Sedan';

select * from driver_ratingss

--7.	Retrieve all rides where payment was made using UPI:
create view paymentss as 
SELECT * FROM Bengaluru_Rides_Data WHERE Payment_Method = 'UPI';

select * from paymentss

--8.	Find the average customer rating per vehicle type:
create view avg_customer_rating as 
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM Bengaluru_Rides_Data
GROUP BY Vehicle_Type;

select * from avg_customer_rating


--9.	Calculate the total booking value of rides completed successfully:
create view total_booking_value as 
SELECT SUM(Booking_Value) as total_successful_value FROM Bengaluru_Rides_Data WHERE
Booking_Status = 'Success';

select * from total_booking_value

--10.	List all incomplete rides along with the reason:
create view incomplete_ridee as 
SELECT Booking_ID, Incomplete_Rides_Reason FROM Bengaluru_Rides_Data 
WHERE Incomplete_Rides =1

select * from incomplete_ridee


