Select Certified.Employee_ID, Skill.Skill_Name 
From Certified
INNER JOIN Skill 
ON Certified.Skill_ID = Skill.Skill_ID
ORDER BY Skill.Skill_ID ASC, Certified.Employee_ID ASC;
