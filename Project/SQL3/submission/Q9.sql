-- 9. For each recipe, list the name of the recipe and the number of ingredients necessary to prepare that dish.
-- Label the number of ingredients column numIngredients.

Select RecipeName, COUNT(c.IngredientID) AS numIngredients
From Recipes AS a
JOIN  IngredientList as b
ON b.RecipeID = a.RecipeID
JOIN  Ingredients AS c
ON c.IngredientID = b.RecipeID
Group by b.RecipeID;
