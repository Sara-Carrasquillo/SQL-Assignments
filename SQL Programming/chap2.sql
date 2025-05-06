REM Sara Carrasquillo
REM Chapter 2

REM Hands-On #4
SELECT "CUSTOMER#", city, state FROM CUSTOMERS;


REM Hands-On #5
SELECT NAME, contact AS "Contact Person", PHONE FROM PUBLISHER;


REM Hands-On #6
SELECT DISTINCT CATEGORY FROM BOOKS;


REM Hands-On #7
SELECT DISTINCT CUSTOMER# FROM ORDERS;


REM Hands-On #8
SELECT CATEGORY, TITLE FROM BOOKS;





REM Advanced Challenge #1
SELECT LASTNAME || ', ' || FIRSTNAME AS "Name", ADDRESS AS "Address", CITY || ', ' || STATE || ' ' || ZIP AS "Location" FROM CUSTOMERS ORDER BY LASTNAME, FIRSTNAME;

REM Advanced Challenge #2
SELECT TITLE, ((RETAIL - COST) / COST) * 100 AS "Profit %" FROM BOOKS;

