#! /bin/bash
if [ ! -f /home/vagrant/already-installed-flag ]
then
  echo "ADD EXTRA ALIAS VIA .bashrc"
  cat /vagrant/bashrc.append.txt >> /home/vagrant/.bashrc
  #echo "GENERAL YUM UPDATE"
  #yum -y update
  #echo "INSTALL GIT"
  yum -y install git
  #echo "INSTALL VIM"
  #yum -y install vim
  #echo "INSTALL TREE"
  yum -y install tree
  #echo "INSTALL unzip curl wget lsof"
  yum  -y install unzip curl wget lsof 
  # install sysstat
  yum -y sysstat
  systemctl start sysstat
  systemctl enable sysstat


   wget //github.com/datacharmer/dbdeployer/releases/download/1.17.1/dbdeployer-1.17.1-docs.linux.tar.gz
   tar xzf dbdeployer-1.17.1-docs.linux.tar.gz
   mv dbdeployer-1.17.1-docs.linux /usr/bin/dbdeployer
   wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-8.0.11-linux-glibc2.12-x86_64.tar.gz
   dbdeployer --sandbox-binary=/opt/mysql/ unpack mysql-8.0.11-linux-glibc2.12-x86_64.tar.gz



else
  echo "already installed flag set : /home/vagrant/already-installed-flag"
fi

