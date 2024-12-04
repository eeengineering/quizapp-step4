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
    userid SERIAL NOT NULL,
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

INSERT INTO quiz VALUES(default,1,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

INSERT INTO quiz VALUES(default,2,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

INSERT INTO quiz VALUES(default,3,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

INSERT INTO quiz VALUES(default,1,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

INSERT INTO quiz VALUES(default,2,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

INSERT INTO quiz VALUES(default,3,'Linux�̃V�X�e���Ɋւ����ʓI�ȃ��O�t�@�C�����́H','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','����');

SELECT * FROM quiz;

���e�[�u���폜
DROP TABLE users_roles;
DROP TABLE quiz;
DROP TABLE users;
DROP TABLE roles;


��Windows�R�}���h��
���|�[�g8080������ł���v���Z�XID�����
netstat -aon | find "8080"

���v���Z�XID���w�肵�ċ�����~
taskkill /F /pid �o�v���Z�XID�p


��Git�R�}���h��