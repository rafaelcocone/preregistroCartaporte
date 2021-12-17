create table baseCtRetenerAnother (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code varchar(3) not null,
    description varchar(250) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,

    constraint ID_baseCtRetenerAnother_ID primary key (id));

ALTER TABLE baseCtRetenerAnother
    ADD CONSTRAINT RetenerAnother_code_u
    UNIQUE (code)

ALTER TABLE baseCtRetenerAnother 
    ADD CONSTRAINT RetenerAnother_description_u
    UNIQUE (description)

-- Constraints Section
-- ___________________ 

alter table baseCtRetenerAnother add constraint REF_RetenerAnother_users_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table baseCtRetenerAnother add constraint REF_RetenerAnother_users_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

-- Index Section
-- _____________ 

create unique index ID_baseCtRetenerAnother_IND
     on baseCtRetenerAnother (id);