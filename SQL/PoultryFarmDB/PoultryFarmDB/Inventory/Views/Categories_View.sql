CREATE VIEW [Inventory].[Categories_View]
AS
SELECT 
	c.CategoryID
	, c.CategoryGUID
	, c.CategoryKey
	, c.CategoryName
	, c.CategoryDescription
	, u.FilePath
	, c.CreatedDate
	, c.LastUpdate
	FROM Inventory.Categories c
	left JOIN 
    DocumentStorage.UIDocuments u ON c.UIDocumentID = u.UIDocumentID;