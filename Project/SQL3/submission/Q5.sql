-- 5.	List the ingredients for goulash from smallest amount to largest amount.
-- List both the ingredient name and the quantity.
-- Assume that all ingredients are listed with the quantity type grams.

select IngredientName, Quantity
From Recipes 
JOIN IngredientList 
on IngredientList.RecipeID = Recipes.RecipeID
Join Ingredients
ON Ingredients.IngredientID = IngredientList.IngredientID
WHERE Recipes.RecipeName = "Goulash"
Order by IngredientList.Quantity ASC;