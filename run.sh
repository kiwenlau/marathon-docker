#!/bin/bash

sudo docker rm -f marathon > /dev/null

echo -e "\nstart marathon container..."
sudo docker run -itd \
                --net=host \
                --name=marathon \
                kiwenlau/marathon \
                --master zk://192.168.59.1:2181/mesos \
                --zk zk://192.168.59.1:2181/marathon > /dev/null

echo ""