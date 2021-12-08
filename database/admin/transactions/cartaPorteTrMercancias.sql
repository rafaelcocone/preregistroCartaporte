create table cartaPorteTrMercancias (
    id int(10) unsigned NOT NULL AUTO_INCREMENT,
    cantidad varchar(100) not null default '1',
    id_claveUnidad int(10) unsigned NOT NULL default '1',
    claveProducto varchar(100) not null,
    altura varchar(100) not null default '1.00',
    longitud varchar(100) not null default '1.00',
    ancho varchar(100) not null default '1.00',
    valor varchar(100) not null default '1.00',
    moneda varchar(100) not null default 'MXN',
    materialPeligroso varchar(100) DEFAULT null,
    embalaje varchar(100) DEFAULT null,
    STCC varchar(100) DEFAULT null,
    fracArancelaria varchar(100) DEFAULT null,

    active tinyint(1) unsigned DEFAULT 1,
    
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_c_id int(10) unsigned NOT NULL,
    users_u_id int(10) unsigned DEFAULT NULL,
    constraint ID_cartaPorteTrMercancias_ID primary key (id));



    INSERT INTO cartaPorteTrMercancias (
                    claveProducto
                ) VALUES ('10101212')