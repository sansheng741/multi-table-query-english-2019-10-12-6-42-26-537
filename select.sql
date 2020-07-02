# 1.Query the existence of 1 course
select * from course where id = 1;
# 2.Query the presence of both 1 and 2 courses
select * from course where id in(1,2);
# 3.Query the student number and student name and average score of students whose average score is 60 or higher.
select studentId,name,avg(score) from student_course,student where student_course.studentId = student.id GROUP BY studentId HAVING avg(score) >= 60;
# 4.Query the SQL statement of student information that does not have grades in the student_course table
select * from student where student.id not in(select studentId from student_course);
# 5.Query all SQL with grades
select * from student_course;
# 6.Inquire about the information of classmates who have numbered 1 and also studied the course numbered 2
select a.* from student a,student_course b,student_course c where a.id = b.studentId 
and a.id = c.studentId and b.courseId = 1 and c.courseId = 2;
# 7.Retrieve 1 student score with less than 60 scores in descending order
select s.* from student s,student_course sc where s.id = sc.studentId and sc.score < 60 ORDER BY sc.score desc;
# 8.Query the average grade of each course. The results are ranked in descending order of average grade. When the average grades are the same, they are sorted in ascending order by course number.
select courseId,avg(score) from student_course GROUP BY courseId ORDER BY AVG(score) desc,courseId asc;
# 9.Query the name and score of a student whose course name is "Math" and whose score is less than 60
select s.name,sc.score from student s ,student_course sc,course c where s.id = sc.studentId and sc.courseId = c.id
and c.`name` = 'Math' and score < 60;



