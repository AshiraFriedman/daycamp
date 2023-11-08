/*
I run a daycamp during the summer for two seperate halves. 
Now that my daycamp is growing, I would like to create a database to help me keep track of all the camper details. 
It should include the camper's first and last name, the grade they are going into, their school, if they have any allergies (and if so, to what?), 
home phone number, mother's cell phone number, bunk requests, which half they are attending, if they got the early bird special, and if they paid yet. 

Sample Data:
Camper first name, camper last name, grade, school, home phone, mother's cell phone, allergies, bunk requests, half attending, early bird special, paid?
Shayna Stein, first grade, Beis Rivka, 216-123-4567, 216-234-5678, no, Shaindy Bauman, first half, yes, yes
Bracha Katz, first grade, Beis Leah, 216-345-6789, 216-567-8910, no, Gitty Kohn, first half, no, yes
Gitty Kohn, first grade, Beis Leah, 216-456-7890, 216-246-8102, yes-peanuts, Bracha Katz, first half, yes, no
Sarah Baum, second grade, Beis Rivka, 216-678-2345, 216-987-6543, no, Rochel Berman, both halves, yes, no
Miriam Cohen, second grade, Beis Rochel, 216-567-8910, 216-765-4321, yes-dairy, no, second half, no, no
Rivky Cohen, first grade, Beis Rochel, 216-567-8910, 216-765-4321, no, no, second half, no, no
Shaindy Bauman, first grade, Beis Rochel, 216-890-1234, 732-435-6759, no, Shayna Stein, first half, yes, yes
Rivka Katz, second grade, Beis Leah, 216-384-5829, 216-509-3968, no, no, second half, yes, yes
Avigayil Steinman, second grade, Beis Sarah, 216-493-1984, 848-284-2339, yes-dairy, no, both halves, no, yes
Rochel Berman, second grade, Beis Sarah, 216-208-1945, 216-305-8293, no, Sarah Baum, both halves, no, yes
Chana Braun, first grade, Beis Sarah, 216-985-2492, 732-203-8038, no, no, both halves, yes, yes
Leah Gross, first grade, Beis Rivka, 216-135-7900, 216-864-2020, no, no, both halves, no, yes
Yocheved Bernstein, second grade, Beis Rochel, 216-802-7034, 248-384-1049, no, no, both halves, no, yes

Questions:
Q: How much do you charge per week?
A: $100 per week, the early bird special is $95 per week. There are no other discounts

Q: Do they need to sign up for a full half, or can the campers sign up for just a few weeks?
A: Registration is for a full half only. They can sign up for first half, second half, or both, but no less than that.

Q: How many weeks are there in each half?
A: Both halves are 4 weeks long. 

Q: What grade is your camp for?
A: Girls going into first and second grade.

Q: Can a camper request more than one girl?
A: No, they can only make one bunk request.

Reports:
1) Please show me list with a calculation of how much each camper will pay in total (it does not matter whether they paid yet or not).
   Make sure to take off for those who recieved the early bird special.
   Include in the list: camper first name, last name, half attending, if they got the early bird special and if they paid yet. 
   Order by: if they paid yet, half attending, and then if they got the early bird special.
2) Show me a list of campers who have not yet payed and add a star to their last name. Include a column which shows how much they owe. 
3) To help create the bunks, show me 2 lists of campers, one for first half and one for second half. It should be ordered by grade and then school. 
   Include camper first name, last name, grade, school, bunk requests, and half attending.
4) Please calculate the number of girls attending camp for just first half, for just second half, and for both halves.
5) Show me a list of campers with allergies and add the word (warning!) to their last name, ex. Steinman (warning!). 
*/
