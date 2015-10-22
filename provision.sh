echo **************************
echo DOWNLOAD JAVA 9 INSTALLER
echo **************************
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

echo **************************
echo INSTALL JAVA 9
echo **************************
mkdir /usr/local/java
cd /usr/local/java
sudo wget http://www.java.net/download/jigsaw/archive/b83/binaries/jigsaw-jdk-bin-linux-x64.tar.gz
tar xf jigsaw-jdk-bin-linux-x64.tar.gz

# the installer in the repository does not currently include Jigsaw
#echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
#sudo apt-get -y install oracle-java9-installer
echo "JAVA_HOME=/usr/local/java/jdk1.9.0
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
export JAVA_HOME
export PATH" >> /home/vagrant/.profile

echo **************************
echo DONE
echo **************************
