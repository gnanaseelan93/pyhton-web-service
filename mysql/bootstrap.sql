USE test-db;

CREATE TABLE USER (
ID INTEGER NOT NULL AUTO_INCREMENT,
FULL_NAME VARCHAR (255) NOT NULL,
USER_NAME VARCHAR (255) NOT NULL,
USER_PASSWORD VARCHAR (255) NOT NULL,
ACTIVE BOOLEAN DEFAULT FALSE,
CHANGED_TIME TIMESTAMP NOT NULL,
TENANT_ID INTEGER DEFAULT 0,
PRIMARY KEY (ID, TENANT_ID),
UNIQUE (USER_NAME, TENANT_ID)
) ENGINE INNODB;
