=============================
Lang Wars スターターパッケージ
=============================

このスターターパッケージは、Lang Warsを自分のマシンで実行し、AIを開発するためのパッケージです。

-----------------------------
実行方法
-----------------------------

実行には JDK 1.6 以降が必要です。

スターターパッケージのディレクトリでコンソールを開き、以下のコマンドでLang Warsを実行すると、デフォルトAIプログラム同士の対戦が行われます。
対戦のログはコンソールに出力されるほか、スターターパッケージディレクトリ下の'''log.txt'''にも出力されます。

    java -jar JLangWars.jar

自分のAIを対戦させるには、以下のように'''-a'''オプションでAIプログラムの実行コマンドを指定します。'''-w'''オプションでワーキングディレクトリを指定できます。
対戦相手にはデフォルトAIが使用されます。

    java -jar JLangWars.jar -a "java SampleAI" -w "./SampleAI/Java"

AIプログラムおよびワーキングディレクトリはそれぞれ4つまで指定できます。

    java -jar JLangWars.jar -a "java SampleAI" -w "./SampleAI/Java" -a "python SampleAI.py" -w "./SampleAI/Python2"

その他のオプションについては以下のコマンドで表示されるヘルプをご参照ください。

    java -jar JLangWars.jar -h
	
-----------------------------
サンプルプログラム
-----------------------------

'''SampleAI'''ディレクトリにサンプルプログラムが入っています。AIを作成する際の参考にしてください。
AIの入出力形式についてはゲームルールをご参照ください。
https://github.com/AI-comp/JavaChallenge2014/blob/master/Rule.ja.md

なお、サンプルプログラムと同梱のcompile.shおよびrun.shはオンライン対戦サーバーで投稿する際に使用するスクリプトです。
詳しくはオンライン対戦サーバーのヘルプをご参照ください。

-----------------------------
Webサイト
-----------------------------

ゲームルール
https://github.com/AI-comp/JavaChallenge2014/blob/master/Rule.ja.md

公式Webサイト
http://www.ai-comp.net/javachallenge2014/

ACM-ICPC東京大会WebサイトのJava Challengeページ
http://icpc.iisf.or.jp/2014-waseda/regional/java-challenge/
