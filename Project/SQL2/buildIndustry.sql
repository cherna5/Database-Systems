DROP DATABASE IF EXISTS Industry;
-- Your code starts here

CREATE DATABASE Industry;
USE Industry;

  
CREATE TABLE Employee
(
 Employee_ID        int,
 Employee_Fname     varchar(255),
 Employee_Lname     varchar(255),
 Employee_HireDate  DATE NOT NULL,
 Employee_Title     varchar(255),
 PRIMARY KEY (Employee_ID)
  
); 

CREATE TABLE Skill
(
 Skill_ID    int,
 Skill_Name  varchar(255),
 Skill_Description varchar(255),
 PRIMARY KEY (Skill_ID)
);

CREATE TABLE Certified
(
  Employee_ID int,
  Skill_ID    int,    
  Certified_Date DATE NOT NULL,
  FOREIGN KEY (Skill_ID) REFERENCES Skill(Skill_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)

  
);

Create TABLE PositionRequirements
(
 Employee_Title     varchar(255),
 Skill_ID           int,
 FOREIGN KEY (Skill_ID) REFERENCES Skill(Skill_ID)
);



 -- Your code ends here 

show tables;
