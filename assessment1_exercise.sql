--1) How to retrieve all the informarion from the facilities table
select * from facilities 

--2)You want to print out a list of all the facilities and their
--cost to members.how would you retrieve a list of only faciltiy names and cost
select name, membercost from facilities limit 4

--3)How can you produce a list of facilities that charge a fee to members?
--Expected Results should have just 5 rows:

select * from facilities
select * from facilities where membercost>0
select * from facilities where membercost!=0

/*4)4.	How can you produce a list of facilities that
charge a fee to members, and that fee is less than 1/50th of the
monthly maintenance cost? Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.
Result is just two rows:*/

select facid,name,membercost,monthlymaintenance from facilities 
where membercost> 0 and membercost<(monthlymaintenance/50.0)

/*5.)	How can you produce a list of all facilities with the word 'Tennis' in their name?
●	Expected Result is 3 rows */
select * from facilities where name like '%Tennis%'

/*6.	How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.
●	Expected Result is 2 rows
*/
select * from facilities where facid in(1,5)

/*7.	How can you produce a list of members who joined after the start of September 2012? Return the memid, surname, firstname, and joindate of the members in question.
●	Expected Result is 10 rows (not all are shown below)
*/
select * from members
select memid,surname,firstname,joindate from members where  joindate>'2012-09-01'

/*8.	How can you produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.
●	Expected Result should be 10 rows if you include GUEST as a last name
*/
select distinct(surname) from members order by surname limit 10

/*.9.	You'd like to get the signup date of your last member. How can you retrieve this information?
●	Expected Result
●	2012-09-26 18:08:45

 */
select joindate from members where joindate>='2012-09-26'
select max(joindate) from members

/*10) 10.	Produce a count of the number of facilities that have a cost to guests of 10 or more.
●	Expected Result
●	6
*/
select * from facilities
select count(guestcost) from facilities where guestcost>10

/*11.	Produce a list of the total number of slots booked per facility in the month of September 2012. Produce an output table consisting of facility id and slots, sorted by the number of slots.
●	Expected Result is 9 rows
*/
select * from bookings
select facid as facility_id, sum(slots) as total_slots from bookings where
starttime>='2012-09-01' and starttime < '2012-10-01'
group by facid order by total_slots 

/* 12.	Produce a list of facilities with more than 1000 slots booked. Produce an output table consisting of facility id and total slots, sorted by facility id.
●	Expected Result is 5 rows
*/
select facid as facility_id, sum(slots) as total_slots from bookings
group by facid having sum(slots)>1000 order by facility_id

/*13.	How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? Return a list of start time and facility name pairings, ordered by the time.
●	Expected Result is 12 rows
*/
select starttime as start_time, name as facility_name 
from bookings inner join facilities on bookings.facid=facilities.facid
where bookings.starttime >='2012-09-21' and bookings.starttime <'2012-09-22'
and facilities.name like  'Tennis%'
order by start_time

/*14.	How can you produce a list of the start times for bookings by members named 'David Farrell'?
●	Expected result is 34 rows of timestamps
*/
select count(starttime) from bookings where memid
in(select memid from members where firstname='David' and surname='Farrell')

