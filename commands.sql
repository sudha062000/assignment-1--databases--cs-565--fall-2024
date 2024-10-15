-- Get the name of the store and its URL where any spices were purchased.
    SELECT store_name,url_address 
    FROM storeurl 
    WHERE store_id 
    IN (SELECT store_id FROM purchasedspices);
-- Get the name of the store and its URL where spices were purchased, including their barcode.
 SELECT ps.store_name, su.url_address, ps.barcode 
 FROM purchasedspices ps 
 JOIN 
 storeurl su 
 ON ps.store_id = su.store_id; 

-- Get stores who only have an online address.

-- Get stores who have an online and a physical address.

-- Get spices whose names are also brands. For example, Fresh Direct is a store that also makes spices.

-- Get spices whose names contain “cinnamon”.
   SELECT spice_name
   FROM spices 
   WHERE spice_name 
   LIKE '%cinnamon%';

-- Get the brand name of the Sumac spice and the name and URL of the store where it was purchased.
