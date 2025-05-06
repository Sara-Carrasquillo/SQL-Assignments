REM Sara Carrasquillo
REM Chapter 5

REM Hands-On #1
INSERT INTO ORDERS (Order#, Customer#, OrderDate) VALUES (1021, 1009, TO_DATE('2009-07-20', 'YYYY-MM-DD'));

SELECT * FROM ORDERS WHERE Order# = 1021;

REM Hands-On #6
ACCEPT v_isbn PROMPT 'Enter ISBN: '

ACCEPT v_new_cost PROMPT 'Enter new cost: '

UPDATE BOOKS SET Cost = &v_new_cost WHERE ISBN = &v_isbn;

SELECT * FROM BOOKS;

REM Hands-On #9
ACCEPT order_to_delete PROMPT 'Enter Order# to delete: '

DELETE FROM ORDER_DETAILS WHERE Order# = &order_to_delete;

DELETE FROM ORDERS WHERE Order# = &order_to_delete;

REM Hands-On #9A

ACCEPT v_order_number PROMPT 'Enter Order#: '

ACCEPT v_customer_number PROMPT 'Enter Customer#: '

ACCEPT v_order_date PROMPT 'Enter Order Date (YYYY-MM-DD): '

ACCEPT v_ship_date PROMPT 'Enter Ship Date (YYYY-MM-DD): '

INSERT INTO ORDERS (Order#, Customer#, OrderDate, ShipDate) VALUES (&v_order_number, &v_customer_number, TO_DATE('&v_order_date', 'YYYY-MM-DD'), TO_DATE('&v_ship_date', 'YYYY-MM-DD'));

SELECT * FROM ORDERS WHERE Order# = &v_order_number;

REM Hands-On #10

ROLLBACK;

REM Advanced Challenge A
CREATE TABLE CATEGORY (Catcode CHAR(4) PRIMARY KEY, Description VARCHAR2(50) NOT NULL);

INSERT INTO CATEGORY (Catcode, Description) VALUES ('COMP', 'Computers');

INSERT INTO CATEGORY (Catcode, Description) VALUES ('MATH', 'Mathematics');

INSERT INTO CATEGORY (Catcode, Description) VALUES ('SCI', 'Science');

SELECT * FROM CATEGORY;

REM Advanced Challenge B

ALTER TABLE BOOKS ADD Catcode CHAR(4);

DESCRIBE BOOKS;

REM Advanced Challenge C

ALTER TABLE BOOKS ADD CONSTRAINT fk_books_category FOREIGN KEY (Catcode) REFERENCES CATEGORY (Catcode); 

DESCRIBE BOOKS;

UPDATE BOOKS SET Catcode = (SELECT Catcode FROM CATEGORY WHERE BOOKS.Category = CATEGORY.Description);

SELECT * FROM BOOKS;

REM Advanced Challenge D
SELECT Title, Catcode FROM BOOKS ORDER BY Catcode;

REM Advanced Challenge E/F
ROLLBACK;

ALTER TABLE BOOKS DROP CONSTRAINT fk_books_category;

DROP TABLE CATEGORY;

ALTER TABLE BOOKS DROP COLUMN Catcode;



