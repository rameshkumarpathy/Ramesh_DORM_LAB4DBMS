    
    select product.PRO_ID,product.PRO_NAME from `order`, supplier_pricing,product where `order`.PRICING_ID = supplier_pricing.PRICING_ID and 
    supplier_pricing.PRO_ID = product.PRO_ID and `order`.ORD_DATE > "2021-10-05";