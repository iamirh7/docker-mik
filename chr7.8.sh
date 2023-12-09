#!/bin/bash

yum update -y && yum upgrade -y
rm -r /etc/resolv.conf
echo "nameserver 8.8.8.8" >> /etc/resolv.conf

echo "telegram : @iamirh7"
echo "PLEASE WAIT INSTALLING DOCKER...."
echo ""                                                                                                                                        
echo ""
echo ""                                                                                                                                        
echo ""

yum install curl -y
sudo curl -sS https://get.docker.com/ | sh
sudo systemctl start docker
sudo systemctl enable docker

wget wget https://download.mikrotik.com/routeros/7.8/chr-7.8.img.zip
sudo apt-get install p7zip-full unzip
unzip chr-7.8.img.zip
docker load --input chr-7.8.img
docker run --cap-add=NET_ADMIN --device=/dev/net/tun -d --name chr-7.8.img -p 8291:8291  -ti chr-7.8.img
docker attach chr-7.8.img
