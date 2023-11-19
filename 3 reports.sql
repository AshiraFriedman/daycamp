use CampDB
go


/*
1) Please show me list with a calculation of how much each camper will pay in total (it does not matter whether they paid yet or not).
   Make sure to take off for those who recieved the early bird special.
   Include in the list: camper first name, last name, half attending, if they got the early bird special and if they paid yet. 
   Order by: if they paid yet, half attending, and then if they got the early bird special.
*/
select c.FirstName, c.LastName, c.Half, c.EarlyBirdSpecial, c.Paid, c.Price
from Camper c
order by c.Paid, c.Half, c.EarlyBirdSpecial

--2) Show me a list of campers who have not yet payed and add a star to their last name. Include a column which shows how much they owe. 
select c.FirstName, LastName = concat(c.LastName, '*'), c.Price
from Camper c
where c.Paid = 0

-- 3) To help create the bunks, show me 2 lists of campers, one for first half and one for second half. It should be ordered by grade and then school. 
--    Include camper first name, last name, grade, school, bunk requests, and half attending.
select c.FirstName, c.LastName, c.Grade, c.School, c.BunkRequest, c.Half
from Camper c
where c.Half in ('first', 'both')
order by c.Grade, c.School

select c.FirstName, c.LastName, c.Grade, c.School, c.BunkRequest, c.Half
from Camper c
where c.Half in ('second', 'both')
order by c.Grade, c.School

--4) Please calculate the number of girls attending camp for just first half, for just second half, and for both halves.
select attendance = count(c.CamperId), c.Half
from Camper c
group by c.Half

--5) Show me a list of campers with allergies and add the word (warning!) to their last name, ex. Steinman (warning!). 
select c.FirstName, LastName = concat(c.LastName, ' warning!'), c.Allergies
from Camper c
where c.Allergies is not null
