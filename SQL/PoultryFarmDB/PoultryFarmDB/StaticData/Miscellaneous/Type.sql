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
INSERT INTO Miscellaneous.Type (TypeGUID, TypeKey, TypeName, TypeDescription, CreatedDate, LastUpdate)
VALUES
    ('38D094C8-A400-4E9D-8417-EA8FF1F28E24', 'Address', 'CompanyAddress', 'Company Address', '2024-03-20 21:13:12.370', '2024-03-20 21:13:12.370'),
    ('746762B8-9D52-4B16-94F7-9C4A09F5AE43', 'Address', 'OfficeAddress', 'Office Address', '2024-03-20 21:13:12.370', '2024-03-20 21:13:12.370'),
    ('4A53139E-6204-4C9C-A09F-61EB436F7A59', 'Address', 'ShippingAddress', 'Address where the goods will be shipped to.', '2024-03-20 21:13:12.370', '2024-03-20 21:13:12.370'),
    ('0D98AC6F-684A-45FE-846C-95F3B786A89F', 'Address', 'Inventory Address', 'Our Inventory Address', '2024-03-20 21:13:12.370', '2024-03-20 21:13:12.370'),
    ('89C91898-181E-45D3-BE3D-943E90792861', 'Address', 'BillingAddress', 'Company Billing Address', '2024-03-20 23:03:11.493', '2024-03-20 23:03:11.493'),
    ('B2A9E012-DCE1-4116-90CD-CB163A101D80', 'Account', 'Account', 'Account details.', '2024-03-29 01:02:27.707', '2024-03-29 01:02:27.707'),
    ('2405DE13-8EEE-4F02-A391-6AFDD2202C40', 'Inventory', 'Cart', 'Cart items.', '2024-03-29 01:02:27.707', '2024-03-29 01:02:27.707'),
    ('D334919B-5C35-4E2D-B96A-33BB9828C80A', 'Inventory', 'Categories', 'Product Categories', '2024-03-29 01:02:27.707', '2024-03-29 01:02:27.707'),
    ('8D26A78E-C539-4B02-B63A-99836B463EA1', 'UIImage', 'Image', 'UI related Images', '2024-04-04 19:19:04.067', '2024-04-04 19:19:04.067');
