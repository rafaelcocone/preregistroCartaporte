create table adminCtTariffFraction (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code varchar(10) not null,
    description varchar(1500) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_adminCtTariffFraction_ID primary key (id));

ALTER TABLE adminCtTariffFraction
ADD CONSTRAINT TariffFraction_code_u
    UNIQUE (code)

ALTER TABLE adminCtTariffFraction 
    ADD CONSTRAINT TariffFraction_description_u
    UNIQUE (description)

create unique index ID_adminCtTariffFraction_IND
     on adminCtTariffFraction (id);