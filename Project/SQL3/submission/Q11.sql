-- 11.	For each recipe list the amount of cheese required.  Include the name of the recipe  
-- For recipes that don't require cheese, leave the quantity and quantity type null.



SELECT b.RecipeName, a.Quantity, a.QuantityType
FROM IngredientList AS a
LEFT JOIN Recipes AS b 
ON b.RecipeID = a.RecipeID
WHERE a.IngredientID = "8"

;