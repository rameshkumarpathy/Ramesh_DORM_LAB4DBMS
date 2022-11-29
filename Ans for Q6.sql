select tab2.CAT_ID, tab2.PRO_NAME, tab2.PRO_ID,min(tab2.min_price) as Min_Price from category,product inner join
(select product.PRO_ID, product.PRO_NAME, product.CAT_ID, tab1.Min_price from product inner join
(select pro_id, min(SUPP_PRICE) as Min_Price from supplier_pricing group by PRO_ID) as Tab1
where Tab1.PRO_ID = product.PRO_ID) as tab2 where tab2.CAT_ID = category.CAT_ID group by tab2.CAT_ID


