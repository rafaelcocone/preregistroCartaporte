CREATE TABLE baseCtState
(
    id INT(10) unsigned NOT NULL AUTO_INCREMENT,
    code VARCHAR(10) NOT NULL,
    description VARCHAR(100) NOT NULL,

    active tinyint(1) unsigned DEFAULT 1,
    date_creation timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    date_update DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,

    CONSTRAINT ID_baseCtState PRIMARY KEY (id)
) 

ALTER TABLE baseCtState
    ADD CONSTRAINT state_code_u
    UNIQUE (code)

ALTER TABLE baseCtState 
    ADD CONSTRAINT state_description_u
    UNIQUE (description)


INSERT INTO baseCtState(                              
                        clave,
                        descripcion,
                        active
                        )
VALUES("021","Puebla","1")


alter table baseCtState add constraint ID_baseCtState_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table baseCtState add constraint ID_baseCtState_2_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);