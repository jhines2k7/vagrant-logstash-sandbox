#!/bin/bash

wget "https://download.elastic.co/logstash/logstash/logstash-1.5.3.tar.gz"

tar -xvzf logstash-1.5.3.tar.gz

echo 'export PATH="$PATH:$HOME/logstash-1.5.3/bin"' >> /home/vagrant/.profile