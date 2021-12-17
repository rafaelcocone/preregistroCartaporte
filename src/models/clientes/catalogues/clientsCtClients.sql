create table clientsCtClients (
    id_person int(10) unsigned NOT NULL,
    businessGUID varchar(100) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL);

ALTER TABLE clientsCtClients
    ADD CONSTRAINT client_id_u
    UNIQUE (id_person);

-- Constraints Section
-- ___________________ 
alter table clientsCtClients add constraint REF_client_users_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table clientsCtClients add constraint REF_client_users_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

alter table clientsCtClients add constraint ID_client_person_FK
     foreign key (id_person)
     references adminCtPersons (`id`);

-- Index Section
-- _____________ 

create unique index ID_client_person_IND
     on clientsCtClients (id_person);

create index REF_client_users_CRE_IND
     on clientsCtClients (users_c_id);

create index REF_cliente_users_MOD_IND
     on clientsCtClients (users_u_id);

