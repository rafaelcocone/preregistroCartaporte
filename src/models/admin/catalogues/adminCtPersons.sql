create table adminCtPersons (
     id int(10) unsigned NOT NULL AUTO_INCREMENT,
     name varchar(100) not null,
     lastname1 varchar(50) not null,
     lastname2 varchar(50) not null,

     id_address int(10) unsigned NOT NULL,

     telephone varchar(50) not null,
     mobil varchar(50) not null,
     email varchar(200) not null,
     rfc varchar(20) not null,
     businessName varchar(200) DEFAULT NULL,
     
     active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_adminCtPersons_ID primary key (id));


INSERT INTO adminCtPersons (name,
                              lastname1,
                              lastname2,
                              id_address,
                              telephone,
                              mobil,
                              email,
                              rfc,
                              businessName,
                              id_localion   
                              )
VALUES ("Osiris Rafael", "Cocone","López","1","","247-118-78-98","rafaelcocone@gmail.com","QAZ123456","MOVING-PACK","0")


-- Constraints Section
-- ___________________ 

alter table adminCtPersons add constraint REF_Persons_users_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table adminCtPersons add constraint REF_Persons_users_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

alter table adminCtPersons add constraint REF_person_location_FK
     foreign key (id_localion)
     references adminCtLocalities(`id`);

alter table adminCtPersons add constraint REF_person_address_FK
     foreign key (id_address)
     references adminCtAddress (`id`);

-- Index Section
-- _____________ 

create unique index ID_adminCtPersons_IND
     on adminCtPersons (id);

create index REF_adminCtPersons_users_CRE_IND
     on adminCtPersons (users_c_id);

create index REF_adminCtPersons_users_MOD_IND
     on adminCtPersons (users_u_id);

create index REF_person_location_IND
     on adminCtPersons (id_localion);

create index REF_person_address_IND
     on adminCtAddress (id_address);