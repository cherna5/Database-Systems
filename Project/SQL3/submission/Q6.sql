-- 6.	List the dish names from most expensive to least expensive.

SELECT RecipeName AS DishName 
FROM Dishes, Recipes
WHERE Recipes.RecipeID = Dishes.RecipeID
ORDER BY Price DESC