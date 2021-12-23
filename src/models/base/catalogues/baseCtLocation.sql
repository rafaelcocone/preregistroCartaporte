
create table baseCtLocation (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code VARCHAR(10) NOT NULL,
    postalCode VARCHAR(10) NOT NULL,
    description VARCHAR(100) NOT NULL,
    id_town int(10) unsigned NOT NULL,

    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
 constraint ID_baseCtLocation_ID primary key (id));


 
INSERT INTO adminCtLocation(
                            clave,
                            codigo_postal,
                            descripcion
                            )

VALUES("75111","75110 ","La Virgen")



alter table baseCtLocation add constraint ID_baseCtLocation_4_FK
	foreign key (id_town)
	references baseCtTown(`id`);

alter table baseCtLocation add constraint ID_baseCtLocation_1_FK
     foreign key (users_c_id)
     references adminCtUsers (`id`);

alter table baseCtLocation add constraint ID_baseCtLocation_2_FK
     foreign key (users_u_id)
     references adminCtUsers (`id`);

alter table baseCtLocation add 
    CONSTRAINT code_location_town UNIQUE(id_town,code);