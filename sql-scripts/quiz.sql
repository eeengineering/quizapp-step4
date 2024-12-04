delete from quiz;

select setval('quiz_quizid_seq', 1, false);

DO $$
BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO quiz VALUES(default,i,'Linuxのシステムに関する一般的なログファイル名は？','Linux','/var/log/logs','/var/log/messages','/var/log/maillog','/var/log/spooler','1','/var/log/messagesは、UnixおよびUnix系オペレーティングシステム（例えばLinux）で使用される標準的なログファイルの一つです。このファイルはシステムやアプリケーションからの重要なメッセージやイベントを記録するために使用されます。','未完了');
        INSERT INTO quiz VALUES(default,i,'ファイルの末尾から100行を表示させるコマンドは？','Linux','head -n 100','head -l 100','tail -n 100','tail -l 100','3','tailコマンドは指定したファイルの末尾の内容を表示するための Linux コマンドです。オプション-nで表示する行数を指定します。デフォルトでは最後の 10 行を表示します。','未完了');
        INSERT INTO quiz VALUES(default,i,'新規作成するファイルのパーミッションが全て644になるようにする方法は？','Linux','umask 644','umask 022','chmod 644','chmod 022','2','umaskに022を指定するとデフォルトの権限は644となります。一方でディレクトリは755になりますので注意してください。','未完了');        
    END LOOP;
END;
$$;

select * from quiz;