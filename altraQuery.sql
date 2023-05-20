DECLARE @pizzaId INT = 3;
DECLARE @ingredientiDaAssociare INT = 3 - (
    SELECT COUNT(*) FROM [dbo].[PizzaIngredienti] WHERE [PizzaId] = @pizzaId
);

IF @ingredientiDaAssociare > 0
BEGIN
    INSERT INTO [dbo].[PizzaIngredienti] ([PizzaId], [IngredienteId])
    SELECT TOP (@ingredientiDaAssociare) @pizzaId, [Id]
    FROM [dbo].[Ingredienti]
    WHERE [Id] NOT IN (
        SELECT [IngredienteId] FROM [dbo].[PizzaIngredienti] WHERE [PizzaId] = @pizzaId
    )
    ORDER BY NEWID();
END
