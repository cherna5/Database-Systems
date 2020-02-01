-- 8.	List the names of all the Cusine groupings of food served at this restaurant. 
-- Order the results by number of dishes in that category from most to least, alphabetically for ties.

SELECT Distinct c.CuisineName
FROM Dishes AS a 
JOIN Recipes AS b
ON b.RecipeID = a.RecipeID
JOIN Cuisine AS c
ON c.CuisineID = b.CuisineID
GROUP BY c.CuisineName
ORDER BY COUNT(b.RecipeID) DESC, c.CuisineName ASC;






