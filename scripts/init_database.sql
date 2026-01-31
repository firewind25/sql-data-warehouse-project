/*
==========================================
Create database and schemas
==========================================

Script Purpose:
This script checks and creates database called 'Datawarehouse' if the database already exists the script will drop the existing one and creates a new database.
After Database is created, it adds 3 new schemas called bronze, silver and gold.

WARNING:
Tthis script will drop the entire database called 'Datawarehouse' Database, all the data contained within the existing database will be parmenently deleted. 
Proceed with caution and ensure to have proper backups before running the script.
*/

USE master;
GO

-- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1  FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END;
GO

--Create Datawarehouse Database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
Go

Create SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
