create table baseCtTypeHazardousMaterial (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code varchar(4) not null,
    description varchar(350) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_baseCtTypeHazardousMaterial_ID primary key (id));

ALTER TABLE baseCtTypeHazardousMaterial
ADD CONSTRAINT TypeHazardousMaterial_code_u
UNIQUE (code,description)

-- Constraints Section
-- ___________________ 

alter table baseCtTypeHazardousMaterial add constraint REF_HazardousMaterial_users_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table baseCtTypeHazardousMaterial add constraint REF_HazardousMaterial_users_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

-- Index Section
-- _____________ 

create unique index ID_baseCtTypeHazardousMaterial_IND
     on baseCtTypeHazardousMaterial (id);