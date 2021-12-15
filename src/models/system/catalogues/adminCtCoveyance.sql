create table adminCtCoveyance (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code varchar(3) not null,
    description varchar(50) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_adminCtCoveyance_ID primary key (id));

ALTER TABLE adminCtCoveyance
    ADD CONSTRAINT Coveyance_code_u
    UNIQUE (code)

ALTER TABLE adminCtCoveyance 
    ADD CONSTRAINT Coveyance_description_u
    UNIQUE (description)

create unique index ID_adminCtCoveyance_IND
     on adminCtCoveyance (id);