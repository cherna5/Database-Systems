Select Employee.Employee_Title, Skill.Skill_Name
From ((Employee
INNER JOIN Certified
ON Certified.Employee_ID = Employee.Employee_ID)
INNER JOIN Skill
ON Skill.Skill_ID = Certified.Skill_ID)
Where Certified.Certified_Date <= ('2009-06-01');