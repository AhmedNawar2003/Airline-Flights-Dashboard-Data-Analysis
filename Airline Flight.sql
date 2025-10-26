

SELECT * FROM ['Airline Flights Cleaned$'];

-- 1. Total number of flights
SELECT COUNT(*) AS Total_Flights
FROM ['Airline Flights Cleaned$'];

--2. Flights per airline

SELECT airline, COUNT(*) AS Total_Flights
FROM ['Airline Flights Cleaned$']
GROUP BY airline
ORDER BY Total_Flights DESC;


--3. Average ticket price per airline
SELECT airline, AVG(price) AS Avg_Ticket_Price
FROM ['Airline Flights Cleaned$']
GROUP BY airline
ORDER BY Avg_Ticket_Price DESC;


--4. Average ticket price by class (Economy vs Business)
SELECT class, AVG(price) AS Avg_Ticket_Price
FROM ['Airline Flights Cleaned$']
GROUP BY class;


--5. Top 10 busiest routes (source → destination)
SELECT TOP 10 source_city, destination_city, COUNT(*) AS Total_Flights
FROM ['Airline Flights Cleaned$']
GROUP BY source_city, destination_city
ORDER BY Total_Flights DESC


--6. Average flight duration per route
SELECT TOP 10 source_city, destination_city, AVG(duration) AS Avg_Duration
FROM ['Airline Flights Cleaned$']
GROUP BY source_city, destination_city
ORDER BY Avg_Duration DESC


--7. Impact of days left on ticket price
SELECT days_left, AVG(price) AS Avg_Price
FROM ['Airline Flights Cleaned$']
GROUP BY days_left
ORDER BY days_left;


--8. Cheapest and most expensive airlines
SELECT airline, MIN(price) AS Min_Price, MAX(price) AS Max_Price
FROM ['Airline Flights Cleaned$']
GROUP BY airline
ORDER BY Min_Price ASC;


--9. Flights distribution by departure time
SELECT departure_time, COUNT(*) AS Total_Flights
FROM ['Airline Flights Cleaned$']
GROUP BY departure_time
ORDER BY Total_Flights DESC;




--10. Flights distribution by number of stops
SELECT stops, COUNT(*) AS Total_Flights
FROM ['Airline Flights Cleaned$']
GROUP BY stops
ORDER BY Total_Flights DESC;


