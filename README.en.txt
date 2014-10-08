=============================
Lang Wars Starter Package
=============================

This package contains files for running Lang Wars on your machine and developing AI programs.

-----------------------------
How to Execute
-----------------------------

Lang Wars requires JDK 1.6 or higher.
Open the directory of this package using the console and execute Lang Wars as follows, then default AI programs will battle each other.
The battle log is shown on the console and generated as '''log.txt''' file in the directory of this package.

    java -jar JLangWars.jar

To execute your AI program, please specify the execution command of your AI program with '''-a''' option.
You can also specify the working directory with '''-w''' option.
The following example specifies one AI program, and three default AI programs will join the battle.

    java -jar JLangWars.jar -a "java SampleAI" -w "./SampleAI/Java"

You can specify multiple AI programs and working directories up to four as follows.

    java -jar JLangWars.jar -a "java SampleAI" -w "./SampleAI/Java" -a "python SampleAI.py" -w "./SampleAI/Python2"

You can find other options and usages using the following command.

    java -jar JLangWars.jar -h
	
-----------------------------
Sample Program
-----------------------------

'''SampleAI''' directory contains sample AI programs.
The following site describes the input-output format of the communication between AI program and Lang Wars in detail.
https://github.com/AI-comp/JavaChallenge2014/blob/master/Rule.en.md

Note that '''compile.sh''' and '''run.sh''' in '''SampleAI''' directory are scripts which are required when submitting AI programs to the online execution server.
Please see the help in the online execution server.

-----------------------------
Web Sites
-----------------------------

Game Rule
https://github.com/AI-comp/JavaChallenge2014/blob/master/Rule.en.md

Official Web Site
http://www.ai-comp.net/javachallenge2014/

JavaChallenge Page on Official Web Site of The 2014 ACM-ICPC Asia Tokyo Regional Contest
http://icpc.iisf.or.jp/2014-waseda/regional/java-challenge/
