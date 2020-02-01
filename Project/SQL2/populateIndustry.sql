use Industry;
delete from Employee; 
delete from Skill; 
delete from Certified;
delete from PositionRequirements;

-- your code starts here

LOAD DATA INFILE '/home/codio/workspace/Employee.csv' 
INTO TABLE Employee
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Employee_ID ,Employee_Fname ,Employee_Lname,@Employee_HireDate,Employee_Title)
SET Employee_HireDate = STR_TO_DATE(@Employee_HireDate, '%m/%d/%y');

LOAD DATA INFILE '/home/codio/workspace/Skill.csv' 
INTO TABLE Skill
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE '/home/codio/workspace/Certified.csv' 
INTO TABLE Certified
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES 
(Employee_ID,Skill_ID,@Certified_Date)
SET Certified_Date = STR_TO_DATE(@Certified_Date, '%m/%d/%y');

LOAD DATA INFILE '/home/codio/workspace/PositionRequirements.csv' INTO TABLE PositionRequirements
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- your code ends here

select * from Employee order by Employee_Fname;
select * from Skill order by Skill_Name;
select * from Certified order by Certified_Date;
select * from PositionRequirements order by Employee_Title, Skill_ID;


