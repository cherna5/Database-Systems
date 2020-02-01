-- 12.	For the recipe for Shwarma platter, list all of the ingredients and the amount required.

SELECT c.IngredientName, b.Quantity, b.QuantityType
	FROM Recipes AS a
  JOIN IngredientList AS b
  On b.RecipeID = a.RecipeID
  JOIN Ingredients AS c
  ON c.IngredientID = b.IngredientID
  Where b.RecipeID = "3"
  ;

