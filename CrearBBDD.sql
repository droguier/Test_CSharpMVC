--#################################################################
--#################################################################
--## CREACION DE BASE DE DATOS pruebaBBDD
USE master


--Create a database
IF EXISTS(SELECT name FROM sys.databases
	WHERE name = 'pruebaBBDD')
	DROP DATABASE pruebaBBDD
GO

CREATE DATABASE pruebaBBDD
GO

USE pruebaBBDD
GO

--#################################################################
--#################################################################
--## LIMPIAR TABLAS DE DATOS pruebaBBDD

DROP TABLE userTable;
--DROP TABLE auditoriaUser;

--#################################################################
--#################################################################
--## CREAR TABLAS DE DATOS pruebaBBDD

CREATE TABLE userTable (
	userId				INTEGER NOT NULL,
    userName			VARCHAR(50) NOT NULL,
    userLastName		VARCHAR(50) NOT NULL,
    userPw				VARCHAR(50) NULL,
    userPhase			VARCHAR(50) NOT NULL,

	--creationDate         TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   -- creationUser         VARCHAR(200) NULL,
	--modificationDate     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,	
    --modificationUser     VARCHAR(200) NULL,
    
    PRIMARY KEY (userId)
);

/*
CREATE TABLE auditoriaUser (
	audId				INTEGER NOT NULL,
    estatus				CHAR NOT NULL,
    
	userId				INTEGER NOT NULL,
    userNameOld			VARCHAR(50) NOT NULL,
    userNameNew			VARCHAR(50) NOT NULL,
    userLastNameOld		VARCHAR(50) NOT NULL,
    userLastNameNew		VARCHAR(50) NOT NULL,
    userPwOld			VARCHAR(50) NULL,
    userPwnew			VARCHAR(50) NULL,
    userMailOld			VARCHAR(50) NOT NULL,
    userMailNew			VARCHAR(50) NOT NULL,
    
	creationDate         TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creationUser         VARCHAR(200) NULL
) COMMENT='TABLA DE AUDITORIA USUARIOS';
*/

