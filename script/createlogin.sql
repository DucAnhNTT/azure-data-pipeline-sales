--Make sure you use AdventureWorksLT2017	

CREATE LOGIN yourlogin WITH PASSWORD = 'randompassword'
	
CREATE USER yourlogin FOR LOGIN yourlogin

-- Then go to Secutity of the AdventureWorksLT2017 database and set yourlogin to Membership of db_reader
 

 SELECT name FROM sys.tables


 SELECT * FROM	SalesLT.Address