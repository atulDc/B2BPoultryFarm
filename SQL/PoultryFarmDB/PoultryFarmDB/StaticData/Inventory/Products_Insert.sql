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
INSERT INTO Inventory.Products (ProductGUID, CategoryID, ProductName, Description, Price, IsAvailable, CreatedDate, LastUpdate)
VALUES
    ('35AE1707-D4AA-4DA1-A937-FFC7E9A47FE0', 2, 'Kadaknath Chick - One month', 'Originally from Madhya Pradesh, known for their black meat, high protein content and culinary value.', 300, 1, '2024-04-05 14:13:06.933', '2024-04-05 14:13:06.933'),
    ('851B91AC-B64B-4A1C-8255-E6FC600E8AE8', 2, 'Aseel Chick - One month', 'Aseel chickens are popular in Odisha for their sturdy build and excellent meat quality.', 25, 1, '2024-04-05 14:14:30.143', '2024-04-05 14:14:30.143'),
    ('785EF2C7-70F6-4D50-A36B-348D5EA25A89', 2, 'Vanaraja Chick - One month', 'Developed by CARI.Suitable for backyard poultry and known for adaptability to local conditions, and good meat and egg production.', 18, 1, '2024-04-05 14:24:17.290', '2024-04-05 14:24:17.290'),
    ('E35C28BE-62F8-4A53-AB16-742310054D4A', 2, 'Gramapriya Chick - One month', 'Developed by CARI.They are dual-purpose birds, valued for both meat and egg production.', 150, 1, '2024-04-05 14:48:25.390', '2024-04-05 14:48:25.390'),
    ('7A770D4C-3C06-47B7-8672-28C081EECD7D', 2, 'Krishibro Chick - One month', 'Developed by our own OUAT(university). Much preferred by poultry farmers in Odisha for its fast growth and high meat yield.', 15, 1, '2024-04-05 14:54:20.070', '2024-04-05 14:54:20.070'),
    ('21534F80-7401-4952-B8AA-3D652648EDCF', 2, 'Country/Desi Chick - One month', 'These are indigenous desi (local) chicken breeds found in Odisha. Suitable for delicious meat and egg production', 25, 1, '2024-04-05 14:57:41.207', '2024-04-05 14:57:41.207');
