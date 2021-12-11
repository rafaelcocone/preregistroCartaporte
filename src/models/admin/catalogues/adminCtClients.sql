create table adminCtClients (
     id int(10) unsigned NOT NULL AUTO_INCREMENT,
     id_person int(10) unsigned NOT NULL,

     businessGUID varchar(100) not null,

    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
     constraint ID_adminCtClients_ID primary key (id_client),
     constraint SID_person_client_ID unique (id_person));


-- Constraints Section
-- ___________________ 

alter table adminCtClients add constraint REF_client_userCRE_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table adminCtClients add constraint REF_client_userMOD_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

alter table adminCtClients add constraint REF_client_location_FK
     foreign key (id_localion)
     references adminCtLocalities(`id`);

-- Index Section
-- _____________ 

create unique index ID_adminCtClients_IND
     on adminCtClients (id);


create index REF_adminCtClients_users_CRE_IND
     on adminCtClients (users_c_id);

create index REF_adminCtClients_users_MOD_IND
     on adminCtClients (users_u_id);

create unique index ID_adminCtClients_person_IND
     on adminCtClients (id_person);