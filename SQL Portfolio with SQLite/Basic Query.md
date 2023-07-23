# Basic Query
Table of contents
- [Select](https://github.com/zeinhanafi/SQLPortfolio/edit/main/SQL%20Portfolio%20with%20SQLite/Basic%20Query.md#select)
- [Limit](https://github.com/zeinhanafi/SQLPortfolio/edit/main/SQL%20Portfolio%20with%20SQLite/Basic%20Query.md#limit)
- [Where](https://github.com/zeinhanafi/SQLPortfolio/edit/main/SQL%20Portfolio%20with%20SQLite/Basic%20Query.md#limit)
- [Order by](https://github.com/zeinhanafi/SQLPortfolio/edit/main/SQL%20Portfolio%20with%20SQLite/Basic%20Query.md#limit)
## Select, Limit, Where, Order By
Ada 4 perintah yang akan saya pelajari kali ini: 
- Select : berfungsi untuk mengambil data. Besar kecilnya data yang diambil tergantung kita yang menentukan.
- Limit : berfungsi untuk membatasi baris data yang akan ditampilkan
- Where : berfungsi untuk memfilter/menyaring data. Jadi hanya data yang memenuhi kondisi tertentu yang akan ditampilkan
- Order by : berfungsi untuk mengurutkan data.
# Select
Ada dua task yang bisa kita lakukan untuk perintah **Select**. 
- Ambil semua kolom
- Ambil sebagian kolom (bisa 1 kolom atau lebih dari 1 kolom)
## Perintah Dasar - Select - 1
Ambil semua kolom yang ada di tabel Customers
```
/*Show all the data from table customers*/
Select *
from customers 
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/e32f2583-4134-40e7-9eb1-24bdf5768e2d)|
|:--:|
|Ambil semua kolom|
## Perintah Dasar - Select - 2
Ambil 7 kolom dari tabel customers.<br>Kolom-kolomnya adalah `CustomerId`,`FirstName`,`Address`,`City`,`State`,`Country`,`Phone`.
```
/*Show 7 column from tabel customers*/
select CustomerId
, FirstName
, Address
, City
, State
, Country
, Phone
from customers
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/4ae28b35-54f4-4a1e-8720-19fea05266e5)|
|:--:|
|Ambil 7 kolom dari tabel customers|
# Limit
Ada dua task untuk menjalankan perintah **Limit**. 
- Ambil semua kolom dan tampilkan hanya 10 baris data saja.
- Ambil sebagian kolom dan tampilkan hanya 5 baris data saja.
## Perintah Dasar - Limit - 1
Ambil semua kolom dan tampilkan hanya 10 baris data saja. 
```
/*Show all columns from table customers and limit rows to show only 10 rows*/
select *
from customers 
limit 10
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/63289ade-5555-4d67-8e15-095deead8d01)|
|:--:|
|Ambil semua kolom dan tampilkan hanya 10 baris saja.|
## Perintah Dasar - Limit - 2
Ambil sebagian kolom dan tampilkan hanya 5 baris data saja.<br>Kolom-kolomnya adalah `CustomerId`,`FirstName`,`Address`,`City`,`State`,`Country`,`Phone`.
```
/*Show 7 column from tabel customers and limit rows to show only 5 rows*/
select CustomerId
, FirstName
, Address
, City
, State
, Country
, Phone
from customers
limit 5
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/61cc2a8f-7c87-45de-8b73-a3f0493919c8)|
|:--:|
|Ambil sebagian kolom dan tampilkan hanya 5 baris data saja|
# Where
Ada 2 task di perintah **Where**
- Ambil semua kolom dan kolom_1 = xxxx
- Ambil sebagian kolom dan kolom_2 = yyyy
## Perintah Dasar - Where - 1
Ambil semua kolom dan kolom Country = Germany
```
/*Show all data that country is Germany*/
select *
from customers
where country = 'Germany'
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/5e4324d0-29f5-492a-bbab-958bb1c04532)|
|:--:|
|Ambil semua kolom dan kolom Country = Germany|
## Perintah Dasar - Where - 2
Ambil sebagian kolom dan country = Canada dan hanya tampilkan 3 baris data saja.<br>Kolom-kolomnya adalah `CustomerId`,`Country`,`FirstName`,`Address`.
```
/*Show 4 columns data that country is Canada and show only 3 rows*/
select CustomerId
, Country
, FirstName
, Address
from customers
where country = 'Canada'
limit 3
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/e85042f9-204a-4dd2-b297-95f652a438f3)|
|:--:|
|Ambil sebagian kolom dan country = Canada dan hanya tampilkan 3 baris data saja|
## tambahan
Kita juga bisa menggunakan where untuk tipe data Integer/angka,date, null values.<br>
### Where untuk tipe data Integer
Ambil 4 kolom dari tabel customers dan CustomerId = 8. Kolom-kolomnya adalah `CustomerId`,`FirstName`,`Company`,`Address`.
```
/*Show 4 columns only and the customerid = 8*/
select CustomerId
, FirstName
, Company
, Address
from customers
where CustomerId = 8
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/fb0eeb46-2997-49b9-8fca-2ed5fd150d82)|
|:--:|
|Ambil 4 kolom dari tabel customers dan CustomerId = 8|
### Where untuk tipe data Date
Ambil 4 kolom pada tabel employees dengan kolom HireDate lebih dari `2003-04-01`.<br>Kolom-kolomnya adalah `FirstName`,`LastName`,`Title`,`HireDate`.
```
/*Show 4 columns of employees table that HireDate more than 2003-04-01*/
select FirstName
, LastName
, Title
, HireDate
from employees
where HireDate > '2003-04-01'
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/833d64c6-d55e-40e5-b428-050ab53ca4b9)|
|:--:|
|Ambil 4 kolom pada tabel employees dengan kolom HireDate lebih dari `2003-04-01`|
### Where untuk menampilkan data yang tidak null 
Ambil 4 kolom di tabel customers yang Companynya tidak null. 
```
/*Show 4 columns of customers table that Company is not null*/
select FirstName
, LastName
, Company
, Address
from customers
where company is not null
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/cc8d159d-572a-4b67-971c-00f1a1b5f6f4)|
|:--:|
|Ambil 4 kolom di tabel customers yang Companynya tidak null|
### Where dengan operasi aritmatika
Ambil 4 kolom pada table invoices dengan total lebih dari 2+1 dan tampilkan hanya 3 baris data saja. 
```
/*show 3 rows of invoices table that total more than 2+1*/
select CustomerId
, InvoiceDate
, BillingAddress
, Total
from invoices
where Total > 2+1
limit 3
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/20128a96-95fd-432f-9940-380884765ce7)|
|:--:|
|Ambil 4 kolom pada table invoices dengan total lebih dari 2+1 dan tampilkan hanya 3 baris data saja|
# Order by
Order by untuk mengurutkan data. Ada 2 pilihan untuk mengurutkan data: Ascending (`asc`), dan Descending (`desc`).<br>
- Untuk tipe data Integer:
  - Ascending: Mengurutkan dari angka yang paling kecil ke paling besar
  - Descending: Mengurutkan dari angka yang paling besar ke paling kecil
- Untuk tipe data String/Varchar:
  - Ascending: Mengurutkan dari A-Z
  - Descending: Mengurutkan dari Z-A
## Perintah Dasar - Order by - 1
Ambil 4 kolom (`CustomerId`,`FirstName`,`LastName`,`Address`) yang countrynya Canada, tampilkan hanya 10 baris dan diurutkan berdasarkan `FirstName` sesuai abjad (A-Z).
```
select CustomerId
, FirstName
, LastName
, Address
from customers
order by FirstName
limit 10
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/7a684e39-3d59-4b7e-98fc-a9f632c8a5e7)|
|:--:|
|Ambil 4 kolom (`CustomerId`,`FirstName`,`LastName`,`Address`) yang countrynya Canada, tampilkan hanya 10 baris dan diurutkan berdasarkan `FirstName` sesuai abjad (A-Z)|
## Perintah Dasar - Order by - 2
Ambil 3 kolom (`CustomerId`,`Country`,`City`) yang countrynya Canada, tampilkan hanya 10 baris dan diurutkan berdasarkan `City` dari Z-A.
```
select CustomerId
, Country
, City
from customers
order by City desc
limit 10
```
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/7ef5e08e-dd8b-4824-9795-f519d6c3de61)|
|:--:|
|Ambil 3 kolom (`CustomerId`,`Country`,`City`) yang countrynya Canada, tampilkan hanya 10 baris dan diurutkan berdasarkan `City` dari Z-A|
