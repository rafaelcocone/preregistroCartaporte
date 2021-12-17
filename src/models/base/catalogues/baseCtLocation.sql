
create table baseCtLocation (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    code VARCHAR(10) NOT NULL,
    postalCode VARCHAR(10) NOT NULL,
    description VARCHAR(100) DEFAULT NOT NULL,
    id_town int(10) unsigned NOT NULL,

    active tinyint(1) unsigned DEFAULT 1,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
 constraint ID_baseCtLocation_ID primary key (id));