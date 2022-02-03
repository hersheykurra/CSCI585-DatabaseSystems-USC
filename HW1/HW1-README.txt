README.txt:

We have total 12 tables namely STUDENTS, CLASS, SCHEDULE, COURSES, PROJECT, GROUPS, PARTS_FOR_PROJ, LIBRARY, BOOK, FACULTY, RATING, SALARY where the main table of our ER diagram is the STUDENTS table which contains the Student ID(Stud_ID) as the Primary Key. The other attributes that we are storing related to the Student are his/her FirstName, LastName, Date of Birth. 

STUDENTS has the strong relationship with LIBRARY and RATING as they use STUDENTS Primary key Stud_ID as their own primary key. Both LIBRARY and RATING are weak entities. STUDENTS has weak relationship with CLASS, COURSES, PROJECT, GROUPS, SCHEDULE as they do not use Stud_ID as their primary key and have their own primary keys respectively. The mentioned CLASS, COURSES, PROJECT, GROUPS, SCHEDULE are strong entities. 

Each COURSE will have a CLASS (Example: Coding Language: Python and Class_Name as Programming Class) and PROJECT (Project_Name as ‘Building an arcade Game using Raspberry Pi’ etc.). STUDENTS is enrolled in a course with attributes like the Course_Name, Course_Fee, Course_Duration. CLASS and the PROJECT emerge from COURSE so there exists a strong relationship between them and there by using course’s primary key course_ID as their own primary key. 

Next comes GROUPS entity. Students are expected to work on a project in groups and a table will be allocated to them. So, Group_ID and Table_ID are the primary keys. The Table keeps track of the parts given to a particular project. So, PARTS_FOR_PROJ consists of the vendor information that is providing the parts. 

As said in the description, each faculty member can be teaching many classes. And a coding class can be taught by multiple faculty members. Therefore, there is a many to many relationship/cardinality between FACULTY and CLASS. 

Textbooks are to be purchased from the library by the students based on the recommendations of the faculty members. Therefore, LIBRARY acts like a bridge between the STUDENT and BOOK. FACULTY will be suggesting multiple BOOKs for multiple Class_IDs. RATING entity has primary key as Stud_ID as the rating is given by student for a CLASS, FACULTY, PROJECT. 

Finally, The Faculty members will be paid based on the number of hours spent in Class, Project. So, The SALARY table has Date as the Primary key to calculate the hours spent on that particular day and thereby calculating the total wage. 


