create table adminCtPermisionSCT (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code varchar(6) not null,
    description varchar(250) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_adminCtPermisionSCT_ID primary key (id));

ALTER TABLE adminCtPermisionSCT
    ADD CONSTRAINT PermisionSCT_code_u
    UNIQUE (code)

ALTER TABLE adminCtPermisionSCT 
    ADD CONSTRAINT PermisionSCT_description_u
    UNIQUE (description)

create unique index ID_adminCtPermisionSCT_IND
     on adminCtPermisionSCT (id);