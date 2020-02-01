-- How many Hamburgers can be made with the current stock of tomatoes?  
-- Round to the nearest number, and label the result NumBurgers.

Select Round(d.Quantity/b.Quantity) AS NumBurgers
FROM Ingredients AS a
JOIN IngredientList AS b
ON b.IngredientID =  a.IngredientID
JOIN Recipes AS c
ON c.RecipeID = b.RecipeID
JOIN Stock AS d
ON d.IngredientID = b.IngredientID
Where a.IngredientName = "Tomato" AND c.RecipeName = "Hamburger"