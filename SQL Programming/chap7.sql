REM Sara Carrasquillo
REM Chapter 7

@"C:\Users\sctit\OneDrive\Desktop\SQL Programming\StudentDataFiles\JLDB_Build_8.sql"@"C:\Users\sctit\OneDrive\Desktop\SQL Programming\StudentDataFiles\JLDB_Build_9.sql"@"C:\Users\sctit\OneDrive\Desktop\SQL Programming\StudentDataFiles\JLDB_Build_10.sql"@"C:\Users\sctit\OneDrive\Desktop\SQL Programming\StudentDataFiles\JLDB_Build_11.sql"@"C:\Users\sctit\OneDrive\Desktop\SQL Programming\StudentDataFiles\JLDB_Build_12.sql"@"C:\Users\sctit\OneDrive\Desktop\SQL Programming\StudentDataFiles\JLDB_Build.sql"@"C:\Users\sctit\OneDrive\Desktop\SQL Programming\StudentDataFiles\JLDB_Build_5.sql"

REM Hands-On #1
CONNECT sara/luvSQL;

CREATE USER scarrasquillo IDENTIFIED BY quickpass;

DISCONNECT;

REM Hands-On #2
CONNECT scarrasquillo/quickpass;



REM Hands-On #3
CONNECT sara/luvSQL;

GRANT CONNECT, CREATE TABLE, ALTER ANY TABLE TO scarrasquillo;



REM Hands-On #4
CREATE ROLE CUSTOMERREP;



REM Hands-On #5
GRANT INSERT, DELETE ON ORDERS TO CUSTOMERREP;

GRANT INSERT, DELETE ON ORDERITEMS TO CUSTOMERREP;



REM Hands-On #6
GRANT CUSTOMERREP TO scarrasquillo;

DISCONNECT;

REM Hands-On #7
CONNECT scarrasquillo/quickpass;

SELECT * FROM USER_TAB_PRIVS;

DISCONNECT;

REM Hands-On #8
CONNECT sara/luvSQL;

REVOKE DELETE ON ORDERS FROM CUSTOMERREP;

REVOKE DELETE ON ORDERITEMS FROM CUSTOMERREP;



REM Hands-On #9
DROP ROLE CUSTOMERREP;



REM Hands-On #10
DROP USER scarrasquillo CASCADE;

REM Advanced Challenge

CREATE ROLE account_manager_role;
CREATE ROLE data_entry_role;
CREATE ROLE customer_service_role;

REM Account Managers
GRANT SELECT ON BOOKS TO account_manager_role;
GRANT SELECT ON CUSTOMERS TO account_manager_role;
GRANT SELECT ON PROMOTION TO account_manager_role;

REM Data Entry Clerks
GRANT INSERT, UPDATE, DELETE ON BOOKS TO data_entry_role;
GRANT INSERT, UPDATE, DELETE ON PUBLISHER TO data_entry_role;

REM Customer Service Representatives
GRANT SELECT, INSERT, UPDATE, DELETE ON CUSTOMERS TO customer_service_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON ORDERS TO customer_service_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON ORDERITEMS TO customer_service_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON CUSTOMER TO customer_service_role;

REM Drop the roles
DROP ROLE account_manager_role;
DROP ROLE data_entry_role;
DROP ROLE customer_service_role;