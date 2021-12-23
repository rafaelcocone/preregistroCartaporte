create table adminCtAddress (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,

    id_location int(10) unsigned NOT NULL,
    postalCode varchar(5) not null,
    suburb varchar(200) not null,
    street varchar(100) not null,
    numberOutter varchar(20) not null,
    numberInner varchar(20) default null,

    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
  
     constraint ID_adminCtAddress_ID primary key (id));

INSERT INTO  adminCtAddress (
     
)




-- Constraints Section
-- ___________________ 
alter table adminCtAddress add constraint REF_address_users_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table adminCtAddress add constraint REF_address_users_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

alter table adminCtAddress add constraint ID_address_location_FK
     foreign key (id_location)
     references baseCtLocation (`id`);


-- Index Section
-- _____________ 

create unique index ID_Address_IND
     on adminCtAddress (id);

create index REF_Address_users_CRE_IND
     on adminCtAddress (users_c_id);

create index REF_Address_users_MOD_IND
     on adminCtAddress (users_u_id);

create index REF_Address_location_IND
     on adminCtAddress (id_location);