CREATE TABLE IF NOT EXISTS storeurl 
(    
    store_id          VARCHAR(14)   NOT NULL,
    store_name        VARCHAR(64)   NOT NULL,
    url_address       VARCHAR(64)   NOT NULL,
    physical_address  VARCHAR(64)   ,
    comment           TINYTEXT 

);