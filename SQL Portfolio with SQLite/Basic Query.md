# Basic Query
Di project ini saya akan mengeksplor Basic query dengan database Chinook menggunakan SQLite.
Untuk mendownload database Chinook bisa ke link ini : https://www.sqlitetutorial.net/sqlite-sample-database/
Berikut penjelasan sedikit mengenai Chinook DB. 
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/6f521fd0-43fb-473e-bf90-be696fa43ae1)|
|:--:|
| Ini ERD dari database Chinook |
|![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/c1554ae1-d82b-4a5a-9b48-a05dea3f1caa)|
|Ini penjelasan mengenai tabel-tabel apa saja yang ada di Chinook|
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
Ambil 7 kolom dari tabel customers. Kolom-kolomnya adalah `CustomerId`,`FirstName`,`Address`,`City`,`State`,`Country`,`Phone`.
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



