CREATE TABLE [dbo].PatientInfo
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PName] NVARCHAR(50) NOT NULL, 
    [Gender] NCHAR(10) NOT NULL, 
    [DOB] DATE NOT NULL, 
    [Contact] NCHAR(10) NOT NULL, 
    [Address] NVARCHAR(MAX) NOT NULL, 
    [City] NCHAR(10) NOT NULL, 
    [AppoimentDate] DATE NOT NULL, 
    [AppoimnetTime] TIME NOT NULL, 
    [Department] NVARCHAR(50) NOT NULL, 
    [Docotor] NVARCHAR(50) NOT NULL, 
    [Status] NCHAR(10) NOT NULL
)
