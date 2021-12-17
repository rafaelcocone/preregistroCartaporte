create table baseCtTariffFraction (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code varchar(10) not null,
    description varchar(1500) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_baseCtTariffFraction_ID primary key (id));

ALTER TABLE baseCtTariffFraction
ADD CONSTRAINT TariffFraction_code_u
    UNIQUE (code)

ALTER TABLE baseCtTariffFraction 
    ADD CONSTRAINT TariffFraction_description_u
    UNIQUE (description)

-- Constraints Section
-- ___________________ 

alter table baseCtTariffFraction add constraint REF_TariffFraction_users_1_FK
     foreign key (users_c_id)
     references baseCtUsers (`id`);

alter table baseCtTariffFraction add constraint REF_TariffFraction_users_FK
     foreign key (users_u_id)
     references baseCtUsers (`id`);

-- Index Section
-- _____________ 

create unique index ID_baseCtTariffFraction_IND
     on baseCtTariffFraction (id);