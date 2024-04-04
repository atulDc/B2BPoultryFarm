CREATE PROCEDURE [Inventory].[GetCategories]
AS 
BEGIN 
	
	SELECT CategoryID
	, CategoryGUID
	, CategoryKey
	, CategoryName
	, CategoryDescription
	, CreatedDate
	, LastUpdate
	FROM Inventory.Categories;

END