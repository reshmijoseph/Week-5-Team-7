-- CAMPGROUND TABLE
-----------------------------------------------

-- select name and daily fee of all campgrounds
SELECT name, daily_fee
<<<<<<< HEAD
FROM campground
;
-- select name and daily fee of all campgrounds ordered by campground name
SELECT name, daily_fee
FROM campground
ORDER BY name
;
-- select name, open from month, open to month, and daily fee of the campgrounds where daily fee is less than $100
SELECT name, open_from_mm, open_to_mm, daily_fee
FROM campground
WHERE daily_fee < '100'
;
-- select name and daily fee of the campgrounds where the campground is open all year long
SELECT name, daily_fee
FROM campground
WHERE open_from_mm = '01' AND open_to_mm = '12'
;
=======
FROM campground;
-- select name and daily fee of all campgrounds ordered by campground name
SELECT name, daily_fee
FROM campground
ORDER BY name;
-- select name, open from month, open to month, and daily fee of the campgrounds where daily fee is less than $100
SELECT name, open_from_mm, daily_fee
FROM campground
WHERE daily_fee < 100;
-- select name and daily fee of the campgrounds where the campground is open all year long
SELECT name, daily_fee
FROM campground
WHERE open_from_mm = 01 and open_to_mm = 12;
>>>>>>> 5e35173034d3632becd70e06ce9a7768bb985251

-- PARK TABLE
-----------------------------------------------

-- select name and description of all parks order by established date in descending order
SELECT name, description
FROM park
<<<<<<< HEAD
ORDER BY establish_date DESC
;
-- select name and description of all parks in Ohio
SELECT name, description
FROM park
WHERE location LIKE 'Ohio'
;
-- select name and description of all parks NOT in Ohio
SELECT name, description
FROM park
Where location != 'Ohio'
;
-- select the total number of visitors for all parks
SELECT SUM (visitors)
FROM park
;
-- select the average number of visitors for all parks
SELECT AVG (visitors)
FROM park
;
=======
ORDER BY establish_date;
-- select name and description of all parks in Ohio
SELECT name, description
FROM park
WHERE location = 'Ohio';
-- select name and description of all parks NOT in Ohio
SELECT name, description
FROM park
WHERE location != 'Ohio';
-- select the total number of visitors for all parks
SELECT visitors
FROM park;
-- select the average number of visitors for all parks
SELECT AVG(visitors)
FROM park;
>>>>>>> 5e35173034d3632becd70e06ce9a7768bb985251

-- SITE TABLE
-----------------------------------------------

-- select all columns from site where utilities is true and order by max RV length with the largest coming first
<<<<<<< HEAD
SELECT *
FROM site
WHERE utilities = 'true'
ORDER BY max_rv_length DESC
;
-- select total number of sites that have utilities hook up
SELECT COUNT(site_id)
FROM site
WHERE utilities = 'false'
;
=======
Select site_id, campground_id, site_number, max_occupancy, accessible, max_rv_length, utilities
From site 
Where utilities = true
Order by max_rv_length;
-- select total number of sites that have utilities hook up
Select count(site_id)
From site
Where utilities = true;
>>>>>>> 5e35173034d3632becd70e06ce9a7768bb985251

-- RESERVATION TABLE
-----------------------------------------------

-- select reservation id, site id, name, from date, to date of the reservations where the checkin date is between the first and last day of the current month (hard coded month is ok)
<<<<<<< HEAD
SELECT reservation_id, site_id, name, from_date, to_date
FROM reservation
WHERE from_date BETWEEN '2021-10-01' AND '2021-10-31'
;
-- select all columns from reservation where name includes 'Reservation'
SELECT *
FROM reservation
WHERE name LIKE '%Reservation'
;
-- select the total number of reservations in the reservation table
SELECT COUNT (reservation_id)
FROM reservation
;
-- select reservation id, site id, name of the reservations where site id is in the list 9, 20, 24, 45, 46
SELECT reservation_id, site_id, name
FROM reservation
WHERE site_id = 9 OR site_id = 20 OR site_id = 24 OR site_id = 45 OR site_id = 46
;
-- select the date and number of reservations for each from_date orderd by from_date in ascending order
SELECT from_date, COUNT(reservation_id)
FROM reservation
GROUP BY from_date
ORDER BY from_date
;
=======
Select reservation_id, site_id, name, from_date, to_date
From reservation
Where from_date > '10-01-2021' and from_date < '10-31-2021' ;


-- select all columns from reservation where name includes 'Reservation'
Select name
From reservation
Where name Like '%Reservation%';
-- select the total number of reservations in the reservation table
Select count(reservation_id)
From reservation;
-- select reservation id, site id, name of the reservations where site id is in the list 9, 20, 24, 45, 46
Select reservation_id, site_id, name
From reservation
Where site_id in (9, 20, 24, 45, 46);
-- select the date and number of reservations for each from_date orderd by from_date in ascending order
Select from_date, count(reservation_id)
From reservation
Group By from_date
Order by from_date;
>>>>>>> 5e35173034d3632becd70e06ce9a7768bb985251
