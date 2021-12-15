create table adminCtPaymentMethod (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code varchar(3) not null,
    description varchar(250) not null,
    
    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_adminCtPaymentMethod_ID primary key (id));

ALTER TABLE adminCtPaymentMethod
    ADD CONSTRAINT Country_code_u
    UNIQUE (code)

ALTER TABLE adminCtPaymentMethod 
    ADD CONSTRAINT Country_description_u
    UNIQUE (description)

create unique index ID_adminCtPayMentmethod_IND
     on adminCtPayMentmethod (id);