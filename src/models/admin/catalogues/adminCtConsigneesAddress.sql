create table adminCtConsigneesAddress (
     id int(10) unsigned NOT NULL AUTO_INCREMENT,
     postalCode varchar(10) not null,

     description varchar(100) not null,
     suburb varchar(100) not null,
     street varchar(100) not null,
     numberOutter varchar(10) not null,
     numberInner varchar(10) default null,
    
     id_localion int(10) unsigned NOT NULL,
     id_consignee int(10) unsigned NOT NULL,

    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,

     constraint ID_adminCtConsigneesAddress_ID primary key (id));


    -- Constraints Section
-- ___________________ 

alter table adminCtConsigneesAddress add constraint REF_ConsigneesAddress_userCRE_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table adminCtConsigneesAddress add constraint REF_ConsigneesAddress_userMOD_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

alter table adminCtConsigneesAddress add constraint REF_ConsigneesAddress_location_FK
     foreign key (id_localion)
     references adminCtLocalities(`id`);


alter table adminCtConsigneesAddress add constraint REF_ConsigneesAddress_consignee_FK
     foreign key (id_consignee)
     references adminCtConsignees(`id`);

-- Index Section
-- _____________ 
    
create unique index ID_adminCtConsigneesAddress_IND
     on adminCtConsigneesAddress (id);

create index REF_ConsigneesAddress_users_CRE_IND
     on adminCtConsigneesAddress (users_c_id);

create index REF_ConsigneesAddress_users_MOD_IND
     on adminCtConsigneesAddress (users_u_id);

create index REF_ConsigneesAddress_localion_IND
     on adminCtConsigneesAddress (id_localion);

create index REF_ConsigneesAddress_consignee_IND
     on adminCtConsigneesAddress (id_consignee);