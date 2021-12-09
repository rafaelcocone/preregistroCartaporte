create table adminCtUsers (
     id int(10) unsigned NOT NULL AUTO_INCREMENT,
     email varchar(200) not null,
     password varchar(200) not null,
     active tinyint(1) unsigned DEFAULT 1,

     id_person int(10) unsigned NOT NULL,
     id_typeAccount int(10) unsigned NOT NULL,
         
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    UNIQUE (email),
     constraint ID_adminCtUsers_ID primary key (id));


INSERT INTO adminCtUsers (email,
                            password,
                            id_person,
                            id_typeAccount 
                            )
VALUES ("rafaelcocone@gmail.com","QAZ123456","1","1")

-- Constraints Section
-- ___________________ 

alter table adminCtUsers add constraint REF_Users_users_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table adminCtUsers add constraint REF_Users_users_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

alter table adminCtUsers add constraint REF_Users_users_3_FK
     foreign key (id_person)
     references adminCtPerson (`id`);

alter table adminCtUsers add constraint REF_Users_users_2_FK
     foreign key (id_typeAccount)
     references adminCtTypeAccounts (`id`);

-- Index Section
-- _____________ 

create unique index ID_adminCtUsers_IND
     on adminCtUsers (id_users);

create index REF_adminCtUsers_users_CRE_IND
     on adminCtUsers (users_c_id);

create index REF_adminCtUsers_users_MOD_IND
     on adminCtUsers (users_u_id);

create index REF_admin_admin_3_IND
     on adminCtUsers (id_person);

create index REF_admin_admin_2_IND
     on adminCtUsers (id_typeAccount);
