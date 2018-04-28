# lego-part-tracker-database

This is the back end database that helps keep track of finding Lego pieces needed to create a set that you own.  This database is the back end data store for the lego-part-tracker-service project.

## getting started

* use the publish command to create the database schema
* when setting the publish rules, set AllowIncompatiblePlatform to true so you can deploy to any version of SQL Server or Azure SQL.  There is nothing special in this project that requires a specific version.
* manually create a sql account that the lego-part-tracker-service project will use
