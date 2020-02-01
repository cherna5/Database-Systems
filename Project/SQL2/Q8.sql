Select Employee.Employee_Fname, Employee.Employee_Lname
From ((Employee
INNER JOIN Certified 
ON Certified.Employee_ID = Employee.Employee_ID)
INNER JOIN Skill
ON Skill.Skill_ID = Certified.Skill_ID)
Where Skill.Skill_ID = ('180');