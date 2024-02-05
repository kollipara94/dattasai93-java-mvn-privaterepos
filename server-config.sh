#! /bin/bash
# sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install git -y
sudo yum install docker -y
sudo systemctl start docker
# sudo yum install maven -y

if [ -d "repo5" ]
then
  echo "repo is cloned and repo exists"
  cd /home/ec2-user/repo5
  git pull origin master
else
 git clone https://github.com/kollipara94/repo5.git
 cd /home/ec2-user/repo5
 git checkout master
fi

sudo docker build -t $1:$2 /home/ec2-user/repo5