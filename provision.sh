echo **************************
echo DOWNLOAD JAVA 9 INSTALLER
echo **************************
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

echo **************************
echo INSTALL JAVA 9
echo **************************
echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get -y install oracle-java9-installer

echo **************************
echo DONE
echo **************************
