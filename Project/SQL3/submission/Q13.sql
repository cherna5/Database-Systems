-- 13.	Suppose that a Shawarma platter has been ordered.  
-- Deduct the necessary ingredients to cook the dish from the Stock table.



UPDATE Stock,takes,Recipes
    SET Stock.Quantity = 
    Where IngredientID = (
                          SELECT IngredientID 
                          FROM IngredientList
                          Where RecipeID = '3'
                          )
 

-- Your code ends here 

SELECT * from Stock;


--Where a.RecipeName = "Shawarma Platter"