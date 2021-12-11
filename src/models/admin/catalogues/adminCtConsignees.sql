create table adminCtConsignees (
     id int(10) unsigned NOT NULL AUTO_INCREMENT,

     businessName varchar(200) DEFAULT NULL,
     telephone varchar(50) not null,
     mobil varchar(50) not null,
     email varchar(200) not null,
     rfc varchar(20) not null,
     taxResidence varchar(50) not null,
     
     type tinyint(1) unsigned DEFAULT 0,
     id_client int(10) unsigned NOT NULL,

    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,

     constraint ID_adminCtConsignees_ID primary key (id));

-- Constraints Section
-- ___________________ 

alter table adminCtConsignees add constraint REF_Consignees_userCRE_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table adminCtConsignees add constraint REF_Consignees_userMOD_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);


alter table adminCtConsignees add constraint REF_Consignees_client_FK
     foreign key (id_client)
     references adminCtClients(`id`);

-- Index Section
-- _____________ 

create unique index ID_adminCtConsignees_IND
     on adminCtConsignees (id);

create index REF_adminCtConsignees_users_CRE_IND
     on adminCtConsignees (users_c_id);

create index REF_adminCtConsignees_users_MOD_IND
     on adminCtConsignees (users_u_id);

create index REF_adminCtConsignees_client_IND
     on adminCtConsignees (id_client);


