use college_db;
select * from students
--  Display the total number of students.
select count (*) as total_students from students;
-- Display the number of students whose percentage is available.
select count(percentage) as available_percentage from students;
-- Display the highest, lowest and average percentage of all students, with the headings
-- Highest, Lowest and Average.
select max(percentage)as Highest,min(percentage)as Lowest,avg(percentage)as Average from students;
-- Display the total number of courses and the total credits in the courses table.
select count(course_id)as Total_courses,sum(credits)as Total_credits from courses;
-- Display the highest and lowest marks in the enrollments table.
select max(marks)as Highest_Marks,min(marks)as Lowest_Marks from enrollments;
-- Display the number of students in each department.
select department,count(*)as Total_Students from students group by department;
-- Display the number of students from each city.
select city,count(*) as Total_students from students group by city;
-- Display the average percentage of each department.
select department, avg(percentage)as average_percentage from students group by department;
-- Display the number of students admitted in each year, with the latest year first.
select admission_year,count(*)as total_students from students group by admission_year order by admission_year desc;
-- Display the number of male and female students in each department.
select department,gender,count(*)as Total_students from students group by department,gender;
-- Display the average marks of each course in the enrollments table, showing the course ID.
select course_id,avg(marks)as Average_marks from enrollments group by course_id;
-- Display the student ID and the number of courses for students who are enrolled in at least 2
-- courses.
-- Display the cities that have at least 6 students.
-- Display the departments whose average percentage is above 70.
-- For students admitted in 2022 or later, display the departments whose average percentage
-- is 75 or more.
-- Among enrollments with marks of 80 or more, display the course IDs that have at least 3
-- such enrollments.