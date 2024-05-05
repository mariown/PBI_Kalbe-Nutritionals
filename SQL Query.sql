--------------------Rata-Rata Umur Customer Berdasarkan Status Pernikahan---------------------
SELECT "Marital Status", ROUND(AVG(age)) AS "Average_Age"
FROM  Customer 
GROUP BY "Marital Status"
--------------------Rata-Rata Umur Customer Berdasarkan Jenis Kelamin-------------------------
SELECT Gender, ROUND(AVG(age)) AS "Average_Age"
FROM Customer  
GROUP BY Gender 
--------------------Nama Store dengan Total Quantity Terbanyak--------------------------------
select Store.StoreName, sum("Transaction".Qty) as total_quantity_terbanyak
from Store
inner join "Transaction" on "Transaction".StoreID = Store.StoreID
group by Store.StoreName 
order by total_quantity_terbanyak desc
limit 1;
--------------------Nama Produk Terlaris (Total Amount terbanyak)-----------------------------
select p."Product Name" , sum(t.totalamount) as Terlaris
from product p 
inner join "Transaction" t  on t.productid  = p.productid 
group by p."Product Name"  
order by Terlaris desc
limit 1;


