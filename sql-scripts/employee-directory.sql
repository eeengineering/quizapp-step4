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

■データ入力

INSERT INTO quiz VALUES(default,1,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

INSERT INTO quiz VALUES(default,2,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

INSERT INTO quiz VALUES(default,3,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

INSERT INTO quiz VALUES(default,1,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

INSERT INTO quiz VALUES(default,2,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

INSERT INTO quiz VALUES(default,3,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','explain1','完了');

SELECT * FROM quiz;

■テーブル削除
DROP TABLE users_roles;
DROP TABLE quiz;
DROP TABLE users;
DROP TABLE roles;


＜Windowsコマンド＞
＞ポート8080をつかんでいるプロセスIDを特定
netstat -aon | find "8080"

＞プロセスIDを指定して強制停止
taskkill /F /pid ｛プロセスID｝


＜Gitコマンド＞