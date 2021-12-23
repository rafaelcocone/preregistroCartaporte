create table adminCtContacts (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(100) not null,
    lastname1 varchar(50) not null,
    lastname2 varchar(50) not null,
    typePerson tinyint(1) default "0" comment '"0" persona fisica; "1" persona moral',
   
    telephone varchar(50) not null,
    mobil varchar(50) not null,
    email varchar(200) not null,
    rfc varchar(20) not null,
    businessName varchar(200) DEFAULT NULL,
    taxResidence char(1) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
     constraint ID_adminCtContacts_ID primary key (id));