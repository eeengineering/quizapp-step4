��quiz�f�[�^�x�[�X�쐬
CREATE DATABASE quiz;

��postgres���O�C��
psql -U postgres -d quiz
password

���e�[�u���쐬
DROP TABLE users_roles;
DROP TABLE quiz;
DROP TABLE users;
DROP TABLE roles;

create TABLE users_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);

create TABLE users (
    userid integer NOT NULL,
    username varchar(255) NOT NULL UNIQUE,
    password varchar(255) NOT NULL,
    primary key (userid)
);

CREATE TABLE quiz (
    quizid SERIAL NOT NULL,
    userid integer NOT NULL,
    quiz varchar(255),
    category varchar(255),
    option1 varchar(255),
    option2 varchar(255),
    option3 varchar(255),
    option4 varchar(255),
    answer integer,
    explain varchar(1000),
    status varchar(255),
    PRIMARY KEY (quizid)
);

create TABLE roles (
    roleid SERIAL NOT NULL,
    rolename varchar(255) NOT NULL,
    primary key (roleid)
);






���f�[�^����

INSERT INTO users_roles VALUES(2,2);
INSERT INTO users_roles VALUES(3,3);

select * from users_roles;

INSERT INTO users VALUES(default,'BBB','BBB','bbbbb');
INSERT INTO users VALUES(default,'CCC','CCC','ccccc');

select * from users;


INSERT INTO quiz VALUES(default,1,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

INSERT INTO quiz VALUES(default,2,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

INSERT INTO quiz VALUES(default,3,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

INSERT INTO quiz VALUES(default,1,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

INSERT INTO quiz VALUES(default,2,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

INSERT INTO quiz VALUES(default,3,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

SELECT * FROM quiz;



INSERT INTO quiz VALUES(
	default,
	1,
	'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H',
	'Linux',
	'/var/log/logs',
	'/var/log/messages',
	'/var/log/maillog',
	'/var/log/spooler',
	1,
	'/var/log/messages�́AUnix�����Unix�n�I�y���[�e�B���O�V�X�e���i�Ⴆ��Linux�j�Ŏg�p�����W���I�ȃ��O�t�@�C���̈�ł��B���̃t�@�C���̓V�X�e����A�v���P�[�V��������̏d�v�ȃ��b�Z�[�W��C�x���g���L�^���邽�߂Ɏg�p����܂��B',
	'������');






	

���e�[�u���폜
DROP TABLE users_roles;
DROP TABLE quiz;
DROP TABLE users;
DROP TABLE roles;



���R�}���h��

���|�[�g8080������ł���v���Z�XID�����
netstat -aon | find "8080"

���v���Z�XID���w�肵�ċ�����~
taskkill /F /pid �o�v���Z�XID�p




��OLD



INSERT INTO quiz VALUES(default,'1','Linux','explain1','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','����',1);
INSERT INTO quiz VALUES(default,'1','Linux','explain1','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','����',2);
INSERT INTO quiz VALUES(default,'1','Linux','explain1','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','����',3);


INSERT INTO quiz VALUES(
	default,
	'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H',
	'Linux',
	'/var/log/logs',
	'/var/log/messages',
	'/var/log/maillog',
	'/var/log/spooler',
	'1',
	'/var/log/messages�́AUnix�����Unix�n�I�y���[�e�B���O�V�X�e���i�Ⴆ��Linux�j�Ŏg�p�����W���I�ȃ��O�t�@�C���̈�ł��B���̃t�@�C���̓V�X�e����A�v���P�[�V��������̏d�v�ȃ��b�Z�[�W��C�x���g���L�^���邽�߂Ɏg�p����܂��B',
	'progress');
	


Users�e�[�u���쐬
DROP TABLE if exists users;
CREATE TABLE users (
    userid SERIAL NOT NULL,
    userid integer, 
    foreign key (userid) references users(userid),
    quiz varchar(50),
    category varchar(10),
    option1 varchar(50),
    option2 varchar(50),
    option3 varchar(50),
    option4 varchar(50),
    answer integer,
    explain varchar(1000),
    status varchar(10),
    PRIMARY KEY (userid)
);


INSERT INTO users VALUES(default,'AAA','AAA','aaaaa');




DROP TABLE if exists users;
create TABLE users (
    userid bigserial NOT NULL,
    username varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    primary key (userid)
);


CREATE TABLE quiz (
    quizid SERIAL NOT NULL,
    username varchar(255),
    quiz varchar(255),
    category varchar(255),
    option1 varchar(255),
    option2 varchar(255),
    option3 varchar(255),
    option4 varchar(255),
    answer integer,
    explain varchar(1000),
    status varchar(255),
    PRIMARY KEY (quizid)
);