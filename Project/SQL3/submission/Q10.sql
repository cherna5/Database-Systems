-- 10.	List the names of dishes requiring at least 150 grams of beef.

SELECT RecipeName 
From Recipes AS a 
INNER JOIN IngredientList AS b
ON b.RecipeID = a.RecipeID
INNER JOIN Ingredients as c
ON c.IngredientID = b.IngredientID
Where b.Quantity >= ('150') AND c.IngredientName = "Beef";