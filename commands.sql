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
SELECT store_name 
FROM storeurl
WHERE physical_address is  NULL; 
-- Get stores who have an online and a physical address.
SELECT store_name 
FROM storeurl 
WHERE physical_address AND url_address is NOT NULL;

-- Get spices whose names are also brands. For example, Fresh Direct is a store that also makes spices.
 SELECT spice_name 
 FROM spices WHERE 
 spice_name in (SELECT DISTINCT brand FROM spices);

-- Get spices whose names contain “cinnamon”.
   SELECT spice_name
   FROM spices 
   WHERE spice_name 
   LIKE '%cinnamon%';

-- Get the brand name of the Sumac spice and the name and URL of the store where it was purchased.
SELECT s.brand, su.store_name, su.url_address 
FROM spices s 
JOIN  purchasedspices ps ON s.spice_name = ps.spice_name 
JOIN storeurl su ON ps.store_id = su.store_id
 WHERE s.spice_name = 'Sumac';