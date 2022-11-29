select count(table2.cus_gender) as NoOfCustomers, table2.cus_gender from 
(select table1.cus_id, table1.cus_gender from
(select `order`.*, customer.CUS_GENDER from `order` inner join customer where `order`.CUS_ID = customer.CUS_ID and `order`.ORD_AMOUNT>=3000)
as table1 group by  table1.cus_id) as table2 group by table2.cus_gender