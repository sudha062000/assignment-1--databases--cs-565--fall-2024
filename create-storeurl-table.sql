CREATE TABLE IF NOT EXISTS spices (
    spice_name        VARCHAR(64)   NOT NULL,     
    store_id          VARCHAR(14)   NOT NULL,
    store_name        VARCHAR(64)   NOT NULL,
    url_address       VARCHAR(64)   NOT NULL,
    physical_address  VARCHAR(64)   NOT NULL,
    comment           TINYTEXT      DEFAULT NULL, -- A comment of up to 255 chars, with each character taking up 1 byte is appropriate. Note that multibyte chars take up at least 2.
    PRIMARY KEY (store_id)
);