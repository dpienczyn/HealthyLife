CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `post` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(45) NOT NULL,
  `tytul` varchar(512) NOT NULL,
  `opis` varchar(5000) NOT NULL,
  PRIMARY KEY (`postid`)
);

CREATE TABLE `comment` (
  `idComment` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(45) NOT NULL,
  `opis` varchar(1000) NOT NULL,
  `postid` int(11) NOT NULL,
  PRIMARY KEY (`idComment`),
  KEY `fk_post` (`postid`),
  CONSTRAINT `fk_post` FOREIGN KEY (`postid`) REFERENCES `post` (`postid`)
);

CREATE TABLE comment_post (
    postid int(11) NOT NULL,
    idComment int(11) NOT NULL,
    PRIMARY KEY (postid),
    CONSTRAINT FK_comment FOREIGN KEY (idComment) REFERENCES comment (idComment)
);

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) NOT NULL,
  PRIMARY KEY (`categoryId`)
);
 
CREATE TABLE `product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) NOT NULL,
  `ilosc` varchar(512) NOT NULL,
  `opis` varchar(512) NOT NULL,
  `cal` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  PRIMARY KEY (`productId`),
  KEY `fk_category` (`categoryId`),
  CONSTRAINT `fk_category` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`)
);

/*All User's gets stored in APP_USER table*/
create table APP_USER (
   id BIGINT NOT NULL AUTO_INCREMENT,
   sso_id VARCHAR(30) NOT NULL,
   password VARCHAR(100) NOT NULL,
   first_name VARCHAR(30) NOT NULL,
   last_name  VARCHAR(30) NOT NULL,
   email VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (sso_id)
);
   
/* USER_PROFILE table contains all possible roles */ 
create table USER_PROFILE(
   id BIGINT NOT NULL AUTO_INCREMENT,
   type VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (type)
);
   
/* JOIN TABLE for MANY-TO-MANY relationship*/  
CREATE TABLE APP_USER_USER_PROFILE (
    user_id BIGINT NOT NULL,
    user_profile_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, user_profile_id),
    CONSTRAINT FK_APP_USER FOREIGN KEY (user_id) REFERENCES APP_USER (id),
    CONSTRAINT FK_USER_PROFILE FOREIGN KEY (user_profile_id) REFERENCES USER_PROFILE (id)
);
  
/* Populate USER_PROFILE Table */
INSERT INTO USER_PROFILE(type)
VALUES ('USER');
  
INSERT INTO USER_PROFILE(type)
VALUES ('ADMIN');
  
INSERT INTO USER_PROFILE(type)
VALUES ('DBA');
  
  
/* Populate one Admin User which will further create other users for the application using GUI */
INSERT INTO APP_USER(sso_id, password, first_name, last_name, email)
VALUES ('sam','$2a$10$4eqIF5s/ewJwHK1p8lqlFOEm2QIA0S8g6./Lok.pQxqcxaBZYChRm', 'Sam','Smith','samy@xyz.com');
  
  
/* Populate JOIN Table */
INSERT INTO APP_USER_USER_PROFILE (user_id, user_profile_id)
  SELECT user.id, profile.id FROM app_user user, user_profile profile
  where user.sso_id='sam' and profile.type='ADMIN';
 
/* Create persistent_logins Table used to store rememberme related stuff*/
CREATE TABLE persistent_logins (
    username VARCHAR(64) NOT NULL,
    series VARCHAR(64) NOT NULL,
    token VARCHAR(64) NOT NULL,
    last_used TIMESTAMP NOT NULL,
    PRIMARY KEY (series)
);

CREATE TABLE APP_USER_PRODUCT (
    userid BIGINT NOT NULL,
    productId int(11) NOT NULL,
    PRIMARY KEY (userid, productId),
    CONSTRAINT FK_APPUSER FOREIGN KEY (userid) REFERENCES APP_USER (id),
    CONSTRAINT FK_PRODUCT FOREIGN KEY (product_id) REFERENCES PRODUCT (productId)
);

CREATE TABLE APP_USER_PRODUCT (
    userid BIGINT NOT NULL,
    productId INT(11) NOT NULL,
    PRIMARY KEY (productId, userid),
    CONSTRAINT FK_APPUSER FOREIGN KEY (userid) REFERENCES APP_USER (id)
);


select * from app_user_product where product_id=2 and userid=1;