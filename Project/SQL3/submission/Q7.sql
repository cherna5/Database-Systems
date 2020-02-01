-- 7.	Return a table containing the dishes alphabetically by their menu category, 
-- sorted from most expensive to least expensive within each category.  
-- Your result should contain the menu category, the dish name, and price.

Select MenuCategory, RecipeName, Price
FROM MenuCategories AS a
Join Dishes AS b
ON b.MenuID = a.MenuID
JOIN Recipes AS c
ON c.RecipeID = b.RecipeID
ORDER BY MenuCategory ASC, b.Price DESC;