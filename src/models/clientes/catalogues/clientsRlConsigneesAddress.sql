create table clientsRlConsigneesAddress (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    description varchar(200) not null,

    id_consignees int(10) unsigned NOT NULL,
    id_address int(10) unsigned NOT NULL,

    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_clientsRlConsigneesAddress_ID primary key (id));

-- Constraints Section
-- ___________________ 
alter table clientsRlConsigneesAddress add constraint REF_RlConsigAddr_users_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table clientsRlConsigneesAddress add constraint REF_RlConsigAddr_users_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

alter table clientsRlConsigneesAddress add constraint ID_RlConsigAddr_consignees_FK
     foreign key (id_consignees)
     references clientsCtConsignees (`id`);

alter table clientsRlConsigneesAddress add constraint ID_RlConsigAddr_address_FK
     foreign key (id_address)
     references adminCtAddress (`id`);

-- Index Section
-- _____________ 

create unique index ID_RlConsigAddr_IND
     on clientsRlConsigneesAddress (id);

create index REF_RlConsigAddr_users_CRE_IND
     on clientsRlConsigneesAddress (users_c_id);

create index REF_RlConsigAddr_users_MOD_IND
     on clientsRlConsigneesAddress (users_u_id);

create index REF_RlConsigAddr_consignees_IND
     on clientsRlConsigneesAddress (id_consignees);

create index REF_RlConsigAddr_address_IND
     on clientsRlConsigneesAddress (id_address);