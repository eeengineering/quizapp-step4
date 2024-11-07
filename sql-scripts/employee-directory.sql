■quizデータベース作成
CREATE DATABASE quiz;

■postgresログイン
psql -U postgres -d quiz
password

■テーブル作成
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






■データ入力

INSERT INTO users_roles VALUES(2,2);
INSERT INTO users_roles VALUES(3,3);

select * from users_roles;

INSERT INTO users VALUES(default,'BBB','BBB','bbbbb');
INSERT INTO users VALUES(default,'CCC','CCC','ccccc');

select * from users;


INSERT INTO quiz VALUES(default,1,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

INSERT INTO quiz VALUES(default,2,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

INSERT INTO quiz VALUES(default,3,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

INSERT INTO quiz VALUES(default,1,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

INSERT INTO quiz VALUES(default,2,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

INSERT INTO quiz VALUES(default,3,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

SELECT * FROM quiz;



INSERT INTO quiz VALUES(
	default,
	1,
	'Linuxのシステムに関する一般的なログファイル名は？',
	'Linux',
	'/var/log/logs',
	'/var/log/messages',
	'/var/log/maillog',
	'/var/log/spooler',
	1,
	'/var/log/messagesは、UnixおよびUnix系オペレーティングシステム（例えばLinux）で使用される標準的なログファイルの一つです。このファイルはシステムやアプリケーションからの重要なメッセージやイベントを記録するために使用されます。',
	'未完了');






	

■テーブル削除
DROP TABLE users_roles;
DROP TABLE quiz;
DROP TABLE users;
DROP TABLE roles;



＜コマンド＞

＞ポート8080をつかんでいるプロセスIDを特定
netstat -aon | find "8080"

＞プロセスIDを指定して強制停止
taskkill /F /pid ｛プロセスID｝




■OLD



INSERT INTO quiz VALUES(default,'1','Linux','explain1','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','Linuxのシステムに関する一般的なログファイル名は？','完了',1);
INSERT INTO quiz VALUES(default,'1','Linux','explain1','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','Linuxのシステムに関する一般的なログファイル名は？','完了',2);
INSERT INTO quiz VALUES(default,'1','Linux','explain1','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','Linuxのシステムに関する一般的なログファイル名は？','完了',3);


INSERT INTO quiz VALUES(
	default,
	'Linuxのシステムに関する一般的なログファイル名は？',
	'Linux',
	'/var/log/logs',
	'/var/log/messages',
	'/var/log/maillog',
	'/var/log/spooler',
	'1',
	'/var/log/messagesは、UnixおよびUnix系オペレーティングシステム（例えばLinux）で使用される標準的なログファイルの一つです。このファイルはシステムやアプリケーションからの重要なメッセージやイベントを記録するために使用されます。',
	'progress');
	


Usersテーブル作成
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