#!/bin/bash

if [ ! "`java -version > /dev/null 2>&1 | grep jdk1.7.0_45`" ] ;then

if [ ! -d /usr/lib/jvm ];then mkdir /usr/lib/jvm;fi

wget -qNO /tmp/jdk-jdk1.7.0_45-linux-x64.tar.gz https://s3.amazonaws.com/backupify-packages/jdk-1.7.0_45-linux-x64.tar.gz

tar -xzf /tmp/jdk-jdk1.7.0_45-linux-x64.tar.gz -C /usr/lib/jvm

if [ "`update-alternatives --list java | grep java`" ];then

update-alternatives --remove-all java

update-alternatives --remove-all javac

update-alternatives --remove-all javaws

update-alternatives --remove-all jconsole

fi

update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.7.0_45/bin/java" 1

update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.7.0_45/bin/javac" 1

update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.7.0_45/bin/javaws" 1

update-alternatives --install "/usr/bin/jconsole" "jconsole" "/usr/lib/jvm/jdk1.7.0_45/bin/jconsole" 1

update-alternatives --install "/usr/bin/jstat" "jstat" "/usr/lib/jvm/jdk1.7.0_45/bin/jstat" 1

update-alternatives --install "/usr/bin/jmap" "jmap" "/usr/lib/jvm/jdk1.7.0_45/bin/jmap" 1

fi