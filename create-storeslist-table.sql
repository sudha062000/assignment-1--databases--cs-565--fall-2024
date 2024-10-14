CREATE TABLE IF NOT EXISTS storelist (
 
    comment           TINYTEXT      DEFAULT NULL, -- A comment of up to 255 chars, with each character taking up 1 byte is appropriate. Note that multibyte chars take up at least 2.
    store_id          VARCHAR(14),
    store_name        VARCHAR(64)
    PRIMARY KEY (store_id)
);
