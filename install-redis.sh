#!/bin/bash

wget "http://download.redis.io/releases/redis-3.0.3.tar.gz"

tar -xvzf redis-3.0.3.tar.gz

sudo chown -R vagrant redis-3.0.3

cd redis-3.0.3

sudo make

sudo make install

redis-server