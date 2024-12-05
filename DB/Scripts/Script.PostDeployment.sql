/*
Modèle de script de post-déploiement							
--------------------------------------------------------------------------------------
 Ce fichier contient des instructions SQL qui seront ajoutées au script de compilation.		
 Utilisez la syntaxe SQLCMD pour inclure un fichier dans le script de post-déploiement.			
 Exemple :      :r .\monfichier.sql								
 Utilisez la syntaxe SQLCMD pour référencer une variable dans le script de post-déploiement.		
 Exemple :      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
DECLARE @mypath varchar(200) = 'C:\Users\h.vromman\source\repos\Labo-Final-DB\DB\Data\code-postaux-belge.json' 
DECLARE @sql varchar(max) = '

    Declare @JSON varchar(max)
    SELECT @JSON=BulkColumn
    FROM OPENROWSET (BULK ''' + @mypath + ''', SINGLE_CLOB) import
    
    INSERT INTO locality (PostalCode, Name)
    SELECT DISTINCT column_1 AS PostalCode, column_2 AS Name
    FROM OPENJSON(@JSON)  
    WITH (
        column_1 INT,
        column_2 NVARCHAR(100)
    )
'

PRINT @sql -- debug

/* run your BULK INSERT query */
EXEC(@sql)