create table adminCtTypePacking (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code varchar(3) not null,
    description varchar(250) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_adminCtTypePacking_ID primary key (id));

ALTER TABLE adminCtTypePacking
    ADD CONSTRAINT TypePacking_code_u
    UNIQUE (code)

ALTER TABLE adminCtTypePacking 
    ADD CONSTRAINT TypePacking_description_u
    UNIQUE (description)

create unique index ID_adminCtTypePacking_IND
     on adminCtTypePacking (id);