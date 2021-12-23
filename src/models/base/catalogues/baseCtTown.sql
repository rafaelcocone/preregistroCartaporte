CREATE TABLE baseCtTown
( 
 	id INT(10) unsigned NOT NULL AUTO_INCREMENT,
 	code VARCHAR(10) NOT NULL,
 	description VARCHAR(100) NOT NULL,
 	
	active tinyint(1) unsigned DEFAULT 1,
	date_creation timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 	date_update DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
 	users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
	 
	id_state INT(10) unsigned NOT NULL,
    CONSTRAINT ID_baseCtTown PRIMARY KEY (id)
) 	ENGINE = INNODB;



INSERT INTO baseCtTown(
						clave,
						descripcion,
						id_State
						)
VALUES("001","Acajate");


alter table baseCtTown add constraint ID_adminCtState_1_FK
	foreign key (id_state)
	references baseCtState(`id`);

alter table baseCtTown add constraint ID_baseCtTown_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table baseCtTown add constraint ID_baseCtTown_2_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

alter table baseCtTown add
	 CONSTRAINT code_town_state UNIQUE(id_state,code);