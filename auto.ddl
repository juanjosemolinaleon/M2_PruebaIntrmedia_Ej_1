-- Generado por Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   en:        2020-07-08 21:41:36 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE empleado (
    id_emp      VARCHAR2(10) NOT NULL,
    nombre_emp  VARCHAR2(50),
    fecha_ing   DATE
);

ALTER TABLE empleado ADD CONSTRAINT empleado_pk PRIMARY KEY ( id_emp );

CREATE TABLE prest_serv (
    id_presserv       VARCHAR2(10) NOT NULL,
    id_serv           VARCHAR2(10),
    id_emp            VARCHAR2(10),
    id_veh            VARCHAR2(10),
    fecha             DATE,
    servicio_id_serv  VARCHAR2(10) NOT NULL,
    empleado_id_emp   VARCHAR2(10) NOT NULL,
    vehiculo_id_veh   VARCHAR2(10) NOT NULL
);

CREATE UNIQUE INDEX prest_serv__idx ON
    prest_serv (
        empleado_id_emp
    ASC );

ALTER TABLE prest_serv ADD CONSTRAINT prest_serv_pk PRIMARY KEY ( id_presserv );

CREATE TABLE servicio (
    id_serv      VARCHAR2(10) NOT NULL,
    nombre_serv  VARCHAR2(50),
    valor_serv   FLOAT
);

ALTER TABLE servicio ADD CONSTRAINT servicio_pk PRIMARY KEY ( id_serv );

CREATE TABLE vehiculo (
    id_veh  VARCHAR2(10) NOT NULL,
    marca   VARCHAR2(50),
    modelo  VARCHAR2(50)
);

ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_pk PRIMARY KEY ( id_veh );

ALTER TABLE prest_serv
    ADD CONSTRAINT prest_serv_empleado_fk FOREIGN KEY ( empleado_id_emp )
        REFERENCES empleado ( id_emp );

ALTER TABLE prest_serv
    ADD CONSTRAINT prest_serv_servicio_fk FOREIGN KEY ( servicio_id_serv )
        REFERENCES servicio ( id_serv );

ALTER TABLE prest_serv
    ADD CONSTRAINT prest_serv_vehiculo_fk FOREIGN KEY ( vehiculo_id_veh )
        REFERENCES vehiculo ( id_veh );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             1
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
