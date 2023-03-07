-- Joins
    -- 1. Create an inner join that joins customers and orders and specifies the name of the customer and the invoiceId

select "FirstName", "LastName", "InvoiceId", "InvoiceDate" from "Customer" join "Invoice" on "Customer"."CustomerId" = "Invoice"."CustomerId";

    -- 2. Create an outer join that joins the customer and invoice table, specifying the CustomerId, firstname, lastname, invoiceId, and total.

select "Customer"."CustomerId", "FirstName", "LastName", "InvoiceId", "Total" from "Customer" full outer join "Invoice" on "Customer"."CustomerId" = "Invoice"."CustomerId";

    -- 3. Create a right join that joins album and artist specifying artist name and title.

select "Artist"."Name" as "Artist Name", "Album"."Title" as "Album Title" from "Album" right outer join "Artist" on "Album"."ArtistId" = "Artist"."ArtistId"

    -- 4. Create a cross join that joins album and artist and sorts by artist name in ascending order.

select * from "Album" cross join "Artist" order by "Artist"."Name"

    -- 5. Perform a self-join on the employee table, joining on the reportsto column.

select "Worker"."FirstName" as "First Name", "Worker"."LastName"  as "Last Name", "Boss"."FirstName" as "Reports To First Name", "Boss"."LastName" as "Reports To Last Name" from "Employee" "Worker" inner join "Employee" "Boss" on "Worker"."ReportsTo" = "Boss"."EmployeeId" ;

-- Set Operators
    -- 1. Use a unionall to create a table that has the name of all employees and customers
select "FirstName", "LastName" from "Employee"
union all
select "FirstName", "LastName" from "Customer";
