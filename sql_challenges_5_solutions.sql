/*

*******************************************************************************
*******************************************************************************

SQL CHALLENGES 5

*******************************************************************************
*******************************************************************************

In the exercises below you will need to use the following clauses:
	- LIKE (%, _)

--------------------------------------------------------------------------------

In SQL we can have many databases, they will show up in the schemas list
We must first define which database we will be working with. */

USE publications;

/*******************************************************************************
LIKE

https://www.w3schools.com/sql/sql_like.asp

Here we will also learn to use some wild card characters:
https://www.w3schools.com/sql/sql_wildcards.asp
(You can ignore 'Wildcard Characters in MS Access'
You need to look at the section 'Wildcard Characters in SQL Server')
*******************************************************************************/

/* 1. Select all books from the table title that contain the word "cooking"
   in its title */
   
SELECT 
	title
FROM
	titles
WHERE title LIKE "%cooking%";
	


-- 2. Select all titles that start with the word "The"

SELECT 
    title
FROM
    titles
WHERE
    title LIKE ('The %');
    


/* 3. Select the full names (first and last name) of authors whose last name
   starts with "S" */

SELECT 
    au_fname, au_lname
FROM
    authors
WHERE
    au_lname LIKE ('S%');


/* 4. Select the name and address of all stores located in an Avenue
   (its address ends with "Ave.") */

SELECT
	stor_name AS store_name, stor_address
FROM 
	stores
WHERE
	stor_address LIKE ('%Ave.');

/* 5. Select the name and address of all stores located in an Avenue or in a
   Street (address ended in "St.") */
   
SELECT 
    stor_name, stor_address
FROM
    stores
WHERE
    stor_address LIKE ('%Ave.')
        OR stor_address LIKE ('%St.');


/* 6. Look at the "employee" table (select all columns to explore the raw data):
   Find a pattern that reveals whether an employee is Female or Male.
   Select all female employees. */

SELECT 
    emp_id, fname
FROM
    employee
WHERE
    emp_id LIKE '%F';

/* 7. Select the first and last names of all male employees whose name starts
   with "P". */

SELECT 
    emp_id, fname, lname
FROM
    employee
WHERE
    emp_id LIKE '%M'
    AND (fname LIKE 'P%' OR lname LIKE 'P%');

/* 8. Select all books that have an "ing" in the title, with at least 4 other
   characters preceding it. For example, 'cooking' has 4 characters before the
   'ing', so this should be included; 'sewing' has only 3 characters before the
   'ing', so this shouldn't be included. */
   
SELECT 
    title
FROM
    titles
WHERE
    title LIKE '%____ing%';
   
   
