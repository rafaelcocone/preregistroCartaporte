create table clientsCtConsignees (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,

    businessName varchar(200) DEFAULT NULL,
    telephone varchar(50) not null,
    mobil varchar(50) not null,
    email varchar(200) not null,
    rfc varchar(20) not null,
    taxResidence  varchar(100) not null,

    id_client int(10) unsigned NOT NULL,

    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_clientsCtConsignees_ID primary key (id));

-- Constraints Section
-- ___________________ 
alter table clientsCtConsignees add constraint REF_Consignees_users_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table clientsCtConsignees add constraint REF_Consignees_users_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

alter table clientsCtConsignees add constraint ID_Consignees_client_FK
     foreign key (id_client)
     references clientsCtClients (`id_person`);

-- Index Section
-- _____________ 

create unique index ID_Consignees_IND
     on clientsCtConsignees (id);

create index REF_Consignees_users_CRE_IND
     on clientsCtConsignees (users_c_id);

create index REF_Consignees_users_MOD_IND
     on clientsCtConsignees (users_u_id);

create index REF_Consignees_cliente_IND
     on clientsCtConsignees (id_client);