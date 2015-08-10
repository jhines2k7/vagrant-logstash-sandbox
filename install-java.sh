#!/bin/bash

wget --no-cookies \
--no-check-certificate \
--header "Cookie: oraclelicense=accept-securebackup-cookie" \
"http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz" \
-O jdk-8-linux-x64.tar.gz
# then
tar -xzvf jdk-8-linux-x64.tar.gz

echo 'export JAVA_HOME="$HOME/jdk1.8.0_51"' >> /home/vagrant/.profile
echo 'export PATH="$PATH:$JAVA_HOME/bin"' >> /home/vagrant/.profile