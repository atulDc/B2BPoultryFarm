/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
INSERT INTO DocumentStorage.UIDocuments (FilePath, UIDocumentTypeID, Description, CreatedDate, LastUpdate, UIDocumentGUID)
VALUES
    ('country-chicken.jpg', 9, 'Image of a hen', '2024-04-04 19:31:15.767', '2024-04-04 19:31:15.767', '6E8581D1-46D0-4839-A600-E9C52F190C86'),
    ('Saanen-goat.jpg', 9, 'Image of a goat', '2024-04-04 19:31:46.643', '2024-04-04 19:31:46.643', '50FE40C4-C6D4-4E0D-86AC-66D177FC2B5C'),
    ('eggs.jpg', 9, 'Image of a egg', '2024-04-04 19:32:09.523', '2024-04-04 19:32:09.523', '240CE1F7-3865-4679-834C-FD3109CB6A88'),
    ('rohi-fish.jpg', 9, 'Image of a rohi fish', '2024-04-04 19:32:34.490', '2024-04-04 19:32:34.490', '11E38907-F3B9-4058-8A3F-93591BA9BB07'),
    ('prawn.jpg', 9, 'Image of prawns', '2024-04-04 19:33:10.163', '2024-04-04 19:33:10.163', 'F7987617-08B9-4138-8C13-DEBB36B5F6D7');
