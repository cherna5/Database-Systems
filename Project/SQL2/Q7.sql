Select Skill.Skill_Name
From ((Skill 
INNER JOIN Certified 
ON Certified.Skill_ID = Skill.Skill_ID)
INNER JOIN Employee
ON Employee.Employee_ID = Certified.Employee_ID)
Where Employee.Employee_ID = ('6234');