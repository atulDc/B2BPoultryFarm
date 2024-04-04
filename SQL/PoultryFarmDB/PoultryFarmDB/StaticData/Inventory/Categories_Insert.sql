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
INSERT INTO Inventory.Categories (CategoryGUID, CategoryKey, CategoryName, CategoryDescription, CreatedDate, LastUpdate, UIDocumentID)
VALUES
    ('992EB45E-78AB-4CEE-AB8A-BD1D82594628', 'fish', 'Freshwater Fishes', 'Freshwater Fishes', '2024-04-03 00:47:14.577', '2024-04-04 18:02:03.310', 4),
    ('085DADB7-63B0-4409-A483-2F6E5E508610', 'hen', 'Hens', 'Hens', '2024-04-03 02:04:10.927', '2024-04-04 18:02:38.627', 1),
    ('18F58748-B7B0-4953-9752-4BE31C94135C', 'egg', 'Eggs', 'Eggs', '2024-04-04 17:57:44.633', '2024-04-04 18:03:18.973', 3),
    ('21666331-C614-4DFB-B821-5888C5E811A1', 'goat', 'Goats', 'Goats', '2024-04-04 17:58:04.173', '2024-04-04 18:03:49.463', 2),
    ('05C6FB0B-12B9-4CD5-8649-4C71B96E5769', 'prawn', 'Prawns', 'Prawns', '2024-04-04 17:58:43.313', '2024-04-04 18:01:04.207', 5),
    ('3333C557-62B2-43E1-9AEB-A1AB32126147', 'crab', 'Crabs', 'Crabs', '2024-04-04 17:59:09.587', '2024-04-04 18:04:12.980', 5);
