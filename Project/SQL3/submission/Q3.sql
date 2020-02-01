-- 3.	How many recipes are there which use lettuce?


SELECT COUNT(*) 
FROM (Recipes AS a
INNER JOIN IngredientList AS b
ON a.RecipeID = b.RecipeID)
where b.IngredientID = ("3");


/*
select COUNT(*)
From Recipes AS a
Join IngredientList AS b
ON b.IngredientID = a.RecipeID
Join Ingredients AS c
On c.IngredientID = c.IngredientID
where c.IngredientName = "Lettuce";
*/