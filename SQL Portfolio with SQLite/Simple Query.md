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



