# Simple Query
Ada beberapa macam operator logis (_Logical Operator_) di SQL.<br>
|**Operator**|**Deskripsi**|
|------------|-------------|
| = |sama dengan|
| != atau <> |tidak sama dengan|
| > |lebih dari|
| >= |lebih dari sama dengan|
| < |kurang dari|
| <= |kurang dari sama dengan|

Ini adalah operator yang akan saya pakai di filtering Where.<br>
## Advance Filtering
Untuk topik filtering saya akan pakai db rakafood yang berisi tabel-tabel: 
- rakamin_customers
- rakamin_orders
- rakamin_customer_address

### Filtering Where
#### Contoh 1
Ambil seluruh kolom rakamin customer yang sudah tidak aktif. 
```
/*get all columns in rakamin_customers that not active anymore*/
select *
from rakamin_customers 
where active <> 1
```
![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/f161cb65-3c40-4700-9066-bfd8120dd5bb)
#### Contoh 2
Ambil semua nama dan email dari RakaFood customers yang nomor hp nya belum dikonfirmasi.
```
/*get all name and email in rakamin_customers that the phone is not confirmed yet*/
select name
, email
from rakamin_customers 
where confirmed_phone <> 1
```
![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/348a7cc9-548a-4f31-85f2-8f007f1168c9)
#### Contoh 3
Ambil semua nama, phone dan umur dari RakaFood customers yang umurnya lebih dari 49.
```
/*get all name, phone, and age of rakamin_customers that the age more than 49*/
select name
, phone 
, umur
from rakamin_customers
where umur > 49
order by umur desc
```
![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/701ce9bb-b8b7-4e25-8f8a-3e727e068d04)
#### Contoh 4
Ambil semua customer ID yang total order kurang dari 3. 
```
/*get id and name of customers that total order less than 3*/
select id
, name
from rakamin_customers
where total_orders_before_2014 < 3
order by id
```
![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/917d662b-e216-4c81-b770-ffbbf57929d9)
<br>
<br>
### Filtering In
**IN** digunakan ketika ingin filtering kolom dengan 2 atau lebih dari 2 nilai yang berbeda. 
#### Contoh 1
Ambil semua kolom pada RakaFood customers yang lahir di bulan Juni dan Juli.
```
/*get all customers that born in June or July*/
select *
from rakamin_customers
where bulan_lahir in ('Juni', 'Juli')
order by id
```
![image](https://github.com/zeinhanafi/SQLPortfolio/assets/36752861/3348a97f-afdc-4c8f-826b-3c4bc1b72ffc)
<br>
<br>
### Filtering Like
**LIKE** digunakan ketika ingin filter kolom, tetapi yang mengandung beberapa kata / angka saja.
- Filter LIKE hanya dapat menggunakan tipe data varchar saja
- karakter % merepresentasikan ‘karakter apa saja’
#### Contoh 1



