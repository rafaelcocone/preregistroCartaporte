create table adminCtBusiness (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,

    id_contacto int(10) unsigned NOT NULL,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_adminCtBusiness_ID primary key (id));

-- Constraints Section
-- ___________________ 

alter table adminCtBusiness add constraint REF_business_contact_FK
     foreign key (id_contacto)
     references adminCtContacts (`id`);

alter table adminCtBusiness add constraint REF_business_users_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table adminCtBusiness add constraint REF_business_users_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

-- Index Section
-- _____________ 

create unique index ID_adminCtBusiness_IND
     on adminCtBusiness (id);

create index REF_business_users_CRE_IND
     on adminCtBusiness (users_c_id);

create index REF_business_users_MOD_IND
     on adminCtBusiness (users_u_id);

create index REF_business_contact_IND
     on adminCtBusiness (id_contacto);
