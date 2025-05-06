REM Sara Carrasquillo
REM Chapter 11

REM Hands-On #1

SELECT COUNT(*) AS "Cooking Books" FROM BOOKS WHERE CATEGORY = 'COOKING';

REM Hands-On #3

SELECT MAX(PUBDATE) AS "NEWEST BOOK" FROM BOOKS;

REM Hands-On #5

SELECT MIN(RETAIL) AS "Least Expensive Computer Book" FROM BOOKS WHERE CATEGORY = 'COMPUTER';

REM Hands-On #7

SELECT CUSTOMER#, COUNT(DISTINCT ORDER#) AS "Num of Orders" FROM ORDERS GROUP BY CUSTOMER# HAVING MAX(ORDERDATE) IS NOT NULL ORDER BY CUSTOMER#;

REM Hands-On #9

SELECT o."CUSTOMER#" AS "CUSTOMER#", oi."ORDER#" AS "ORDER#", TO_CHAR(SUM(oi.PAIDEACH), '$999.99') AS "AMOUNT" FROM ORDERS o JOIN ORDERITEMS oi ON o."ORDER#" = oi."ORDER#" WHERE o.SHIPSTATE IN ('GA', 'FL') AND oi.PAIDEACH > 80 GROUP BY o."CUSTOMER#", oi."ORDER#" ORDER BY o."CUSTOMER#";

REM Advanced Challenge

SELECT b.title AS "TITLE", COUNT(oi.order#) AS "Times Ordered" FROM books b JOIN orderitems oi ON b.isbn = oi.isbn WHERE ((b.retail - b.cost) / b.cost) * 100 < 55 GROUP BY b.title ORDER BY b.title; 


