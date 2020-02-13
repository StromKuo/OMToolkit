#Install required packages.
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

#Set up the stable repository.
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

#Install the latest version of Docker Engine - Community and containerd
yum install docker-ce docker-ce-cli containerd.io

#Start Docker immediately
systemctl start docker

#Start Docker on bootup
systemctl enable docker