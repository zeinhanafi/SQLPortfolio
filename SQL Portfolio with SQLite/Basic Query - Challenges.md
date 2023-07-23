# Basic Query Challenges
## Challenge 1
Dari tabel customers, pilih kolom FirstName, LastName, Address, State dimana tampilan kolom FirstName harus urut secara alphabetical, dan kolom State tidak mengandung Null.
```
/*challenge 1*/
select FirstName
, LastName
, Address
, State
from customers
where state is not null 
order by FirstName
```
![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/9c72a9ad-af9d-4cb1-94b3-98df07c1a9c1)
## Challenge 2
Dari tabel customers, ambil informasi dari 5 pelanggan yang berada di negara (country) USA.<br>
Informasi yang perlu diambil hanya CustomerId, nomor telepon (phone) dan alamat email.
```
/*challenge 2*/
select CustomerId
, Phone
, Email
from customers 
where country = 'USA'
limit 5
```
![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/f2c20925-b8fe-4a16-bea9-95d94b426917)
## Challenge 3
Dari tabel invoices, ambil informasi CustomerId, InvoiceDate, Total untuk transaksi dengan nilai Total di atas 10, dan urutkan nilai Total dari yang terbesar.
```
/*challenge 3*/
select CustomerId
, InvoiceDate
, Total 
from invoices 
where Total > 10
order by Total desc
```
![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/18fcc4d1-5197-4ef7-a57d-f635af21a186)
## Challenge 4
Dari tabel invoices, ambil semua data transaksi pada tahun 2013 sampai dengan saat ini.
```
/*challenge 4*/
select *
from invoices
where InvoiceDate >= '2013-01-01'
order by InvoiceDate desc
```
![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/03144a79-d8cb-4a7a-ba22-154230fe87ee)


