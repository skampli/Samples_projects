#Create Users table
CREATE  TABLE users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username)); 	
  
#Create users_roles table  
CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));  
    
  
#Insert statements for  users table 
INSERT INTO users(username,password,enabled) VALUES ('admin','admin123', true);
INSERT INTO users(username,password,enabled) VALUES ('skampli','123456', true);
INSERT INTO users(username,password,enabled) VALUES ('djhalani','password123', true);
INSERT INTO users(username,password,enabled) VALUES ('shabdulr','cisco123', true);

INSERT INTO users(username,password,enabled) VALUES ('bivinaya','cisco123', true);
INSERT INTO users(username,password,enabled) VALUES ('ravpuri','cisco123', true);
INSERT INTO users(username,password,enabled) VALUES ('nisashuk','cisco123', true);
INSERT INTO users(username,password,enabled) VALUES ('pugarg','cisco123', true);
INSERT INTO users(username,password,enabled) VALUES ('amraj2','cisco123', true);
INSERT INTO users(username,password,enabled) VALUES ('eduardga','cisco123', true);
INSERT INTO users(username,password,enabled) VALUES ('aksachde','cisco123', true);
INSERT INTO users(username,password,enabled) VALUES ('sarusure','cisco123', true);
INSERT INTO users(username,password,enabled) VALUES ('splasser','cisco123', true);
INSERT INTO users(username,password,enabled) VALUES ('jpmc','cisco123', true);

  
#Insert statements for  user_roles table
INSERT INTO user_roles (username, role) VALUES ('admin', 'ADMIN');
INSERT INTO user_roles (username, role) VALUES ('skampli', 'USER');
INSERT INTO user_roles (username, role) VALUES ('djhalani', 'USER');
INSERT INTO user_roles (username, role) VALUES ('shabdulr', 'USER');

INSERT INTO user_roles (username, role) VALUES ('bivinaya', 'USER');
INSERT INTO user_roles (username, role) VALUES ('ravpuri', 'USER');
INSERT INTO user_roles (username, role) VALUES ('nisashuk', 'USER');
INSERT INTO user_roles (username, role) VALUES ('pugarg', 'USER');
INSERT INTO user_roles (username, role) VALUES ('amraj2', 'USER');
INSERT INTO user_roles (username, role) VALUES ('eduardga', 'USER');
INSERT INTO user_roles (username, role) VALUES ('aksachde', 'USER');
INSERT INTO user_roles (username, role) VALUES ('sarusure', 'USER');
INSERT INTO user_roles (username, role) VALUES ('splasser', 'USER');
INSERT INTO user_roles (username, role) VALUES ('jpmc', 'USER');


#drop table users;
#drop table user_roles;
#Update user_roles set role='USER' where username='skampli';

#select * from users;

#select * from user_roles;