/*challenge 1*/
select FirstName
, LastName
, Address
, State
from customers
where state is not null 
order by FirstName

/*challenge 2*/
select CustomerId
, Phone
, Email
from customers 
where country = 'USA'
limit 5

/*challenge 3*/
select CustomerId
, InvoiceDate
, Total 
from invoices 
where Total > 10
order by Total desc

/*challenge 4*/
select *
from invoices
where InvoiceDate >= '2013-01-01'
order by InvoiceDate desc
