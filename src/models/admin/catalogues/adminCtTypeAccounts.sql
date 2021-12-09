create table adminCtTypeAccounts (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code varchar(3) not null,
    description varchar(100) not null,
    active tinyint(1) unsigned DEFAULT 1,

    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    UNIQUE( code),
    UNIQUE( description),
    constraint ID_adminCtTypeAccounts_ID primary key (id));


INSERT INTO adminCtTypeAccounts (code, description)
VALUES ("DEV", "Desarrollador")


    -- Constraints Section
-- ___________________ 

alter table adminCtPersons add constraint REF_Persons_users_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table adminCtPersons add constraint REF_Persons_users_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);


-- Index Section
-- _____________ 

create unique index ID_adminCtTypeAccounts_IND
     on adminCtTypeAccounts (id);

create index REF_adminCtPersons_users_CRE_IND
     on adminCtTypeAccounts  (users_c_id);

create index REF_adminCtPersons_users_MOD_IND
     on adminCtTypeAccounts  (users_u_id);