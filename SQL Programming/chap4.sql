REM Sara Carrasquillo
REM Chapter 4

REM Hands-On #1
CREATE TABLE store_reps (rep_ID NUMBER(5) PRIMARY KEY, last VARCHAR2(15), first VARCHAR2(10), comm CHAR(1) DEFAULT 'Y');

REM Hands-On #2
ALTER TABLE STORE_REPS MODIFY first VARCHAR2(10) NOT NULL; ALTER TABLE STORE_REPS MODIFY last VARCHAR2(15) NOT NULL;

REM Hands-On #3
ALTER TABLE STORE_REPS ADD CONSTRAINT chk_comm_values CHECK (comm IN ('Y', 'N'));

REM Hands-On #4
ALTER TABLE STORE_REPS ADD Base_salary NUMBER(7,2) CHECK (Base_salary > 0);

SELECT constraint_name, constraint_type, search_condition FROM user_constraints WHERE table_name = 'STORE_REPS';

REM Hands-On #5
CREATE TABLE BOOK_STORES (store_id NUMBER(5) PRIMARY KEY, store_name VARCHAR2(50) NOT NULL, location VARCHAR2(100), manager_id NUMBER(5) UNIQUE, opening_date DATE, books_in_stock NUMBER(4) CHECK (books_in_stock >= 0), CONSTRAINT chk_opening_date CHECK (opening_date <= SYSDATE), CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES EMPLOYEES(employee_id));

REM Hands-On #6
CREATE TABLE BOOK_STORES (Store_ID NUMBER(8) PRIMARY KEY, Name VARCHAR2(30) UNIQUE NOT NULL, Contact VARCHAR2(30), Rep_ID NUMBER(5), CONSTRAINT fk_store_rep FOREIGN KEY (Rep_ID) REFERENCES STORE_REPS(rep_ID));

REM Hands-On #7
ALTER TABLE BOOK_STORES DROP CONSTRAINT fk_store_rep; ALTER TABLE BOOK_STORES ADD CONSTRAINT fk_store_rep FOREIGN KEY (Rep_ID) REFERENCES STORE_REPS(rep_ID) ON DELETE CASCADE;

SELECT constraint_name, constraint_type, search_condition FROM user_constraints WHERE table_name = 'BOOK_STORES';

DROP TABLE STORE_REPS;

DROP TABLE BOOK_STORES;
