-- 15.	A new chef has been hired and is adding their recipes to the restaurant's repertoire.
-- Add the Egg Toast recipe to the database, whose ingredients are 1 slice of bread and 1 egg. 


INSERT INTO Ingredients(IngredientID,IngredientName) VALUES('22', 'bread');
INSERT INTO Recipes (RecipeID, RecipeName, CuisineID) VALUES ('11', 'Egg Toast', NULL);
INSERT INTO IngredientList (RecipeID, IngredientID, Quantity, QuantityType) VALUES ('11', '18', '1', '');
INSERT INTO IngredientList (RecipeID, IngredientID, Quantity, QuantityType) VALUES ('11', '22', '1', '');

-- Your code ends here

SELECT * FROM Recipes;
SELECT * FROM IngredientList;

