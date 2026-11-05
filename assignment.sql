use college_db;
select * from students;
-- Display the different cities the students come from.
select distinct city from students;
-- Display the different departments.
select distinct department from students;
--  Display the different combinations of department and admission_year.
select distinct department,admission_year from students;
--  Display all students from Kochi.
select first_name,last_name,city from city where city=kochi;
--  Display first_name, last_name and percentage of students who scored above 80.
select first_name,last_name,percentage from students where percentage >=80;
--  Display all students who are not in the Commerce department.
select first_name,last_name,department from students where not department="commerce";
--  Display all students admitted in 2023 or later.
select first_name,last_name,admission_year from students where admission_year >=2023;
--  Display all female students in Computer Science.
select first_name, last_name, gender from students where gender ="f";
--  Display all students in Electronics or Mechanical.
select first_name, last_name, department from students where department="Electronics" or department-"Mechanical";
--  Display all students from Kochi, Thrissur or Kozhikode.
select first_name , last name , city from students where city in ("kochi","Thrissur", "Kozhikode");
--  Display all students who are not from Chennai, Bengaluru or Trivandrum.
select first_name, last_name, city from students where not city in ("Chennai", "Bengaluru", "Trivandrum");
--  Display first_name, department and percentage of students who scored 70 or more
-- and 85 or less.
select first_name, department, percentage from students where percentage between 70 and 80;
--  Display first_name and date_of_birth of students born on or after 1 January 2004
-- and on or before 30 June 2004.
select first_name, date_of_birth from students where date_of_birth between "2004-01-01" and "2004-06-30";
--  Display first_name, department and percentage of Computer Science or Electronics
select first_name,department,percentage from students where department in('computer science' or 'electronics')and percentage>=85;
-- students who scored above 85.
select first_name , department,percentage from students where department in ('computer science' or 'electronics') and percentage >=85;
--  Display all courses that have 4 credits.
select * from courses where credits=4;
--  Display all enrollments of course 101 where the marks are 80 or more.
select * from enrollments where course_id=101 and marks >=80