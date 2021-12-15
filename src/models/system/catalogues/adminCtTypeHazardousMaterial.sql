create table adminCtTypeHazardousMaterial (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code varchar(4) not null,
    description varchar(350) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_adminCtTypeHazardousMaterial_ID primary key (id));

ALTER TABLE adminCtTypeHazardousMaterial
ADD CONSTRAINT TypeHazardousMaterial_code_u
UNIQUE (code,description)


create unique index ID_adminCtTypeHazardousMaterial_IND
     on adminCtTypeHazardousMaterial (id);