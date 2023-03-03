-- Querying practice

-- 1. Select all records from the Employee table.

select * from "Employee" 

-- 2. Select all records from the Employee table where last name is King.

select * from "Employee" where "LastName" = 'King' 

-- 3. Select all records from the Employee table where first name is Andrew and REPORTSTO is NULL.

select * from "Employee" where "FirstName" = 'Andrew' and "ReportsTo" = null; 

-- 4. Select all albums in Album table and sort result set in descending order by title.

select * from "Album" order by "Title" desc 

-- 5. Select first name from Customer and sort result set in ascending order by city

select "FirstName" from "Customer" order by "City"  

-- 6. Select all invoices with a billing address like “T%”

select * from "Invoice" where "BillingAddress" like 'T%'

-- 7. Select all invoices that have a total between 15 and 50

select * from "Invoice" where "Total" <= 50 and "Total" >= 15

-- 8. Select all employees hired between 1st of June 2003 and 1st of March 2004

select * from "Employee" where "HireDate" >= '2003-06-01' and "HireDate" <= '2004-03-01' 



-- Insert practice

-- 1. Insert two new records into Genre table

insert into "Genre" values(26,'Afrobeat');
insert into "Genre" values(27,'Soca');
-- 2. Insert two new records into Employee table

insert into "Employee" ("EmployeeId", "LastName", "FirstName") values(9,'Sochan','Jeremy');
insert into "Employee" ("EmployeeId", "LastName", "FirstName") values(10,'Powers','Charisse');

-- 3. Insert two new records into Customer table
select * from "Customer";
insert into "Customer" ("CustomerId", "LastName", "FirstName", "Email") values(60,'Natasha','Pollard', 'scotfl@msn.com');
insert into "Customer" ("CustomerId", "LastName", "FirstName", "Email") values(61,'Benedict','Harrington', 'seurat@yahoo.ca');




-- Update Practice
select * from "Artist";
-- 1. Update Aaron Mitchell in Customer table to Robert Walter
update "Customer" set "FirstName" = 'Robert', "LastName" = 'Walter' where "FirstName" ='Aaron' and "LastName" = 'Mitchell';
-- 2. Update name of artist in the Artist table “Creedence Clearwater Revival” to “CCR”
update "Artist" set "Name" =  'CCR' where "Name" = 'Creedence Clearwater Revival';