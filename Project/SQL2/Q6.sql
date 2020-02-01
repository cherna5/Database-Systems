Select Certified.Certified_Date 
FROM Certified 
INNER JOIN Skill
ON Skill.Skill_ID = Certified.Skill_ID
WHERE Skill_Name = ('Basic Web Design'); 