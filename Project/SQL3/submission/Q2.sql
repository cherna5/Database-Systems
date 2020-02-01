-- 2.	What is the cheapest item on the menu?  Include the name and the price. 

select RecipeName, Price AS "minPrice"
FROM Recipes AS a
JOIN Dishes AS b
ON b.RecipeID = a.RecipeID
Where PRICE IN (SELECT MIN(PRICE) FROM Dishes) 

