# Garantindo as chaves
# ssh-keygen -q -t rsa -f key -N ''

KEY_PATH='/vagrant/keys'
mkdir -p /root/.ssh
cp $KEY_PATH/key /root/.ssh/id_rsa
cp $KEY_PATH/key.pub /root/.ssh/id_rsa.pub
cp $KEY_PATH/key.pub /root/.ssh/authorized_keys
chmod 400 /root/.ssh/id_rsa*
cat /root/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

# Garantindo os hosts
HOSTS=$(head -n7 /etc/hosts)
echo -e "$HOSTS" > /etc/hosts
echo '10.20.20.100 server.machine' >> /etc/hosts

# https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-20-04-pt
echo "
###########################
##### INSTALLING JAVA #####
###########################"
apt-get update
apt-get install default-jdk -y -qq >/dev/null

# https://linuxize.com/post/how-to-install-apache-maven-on-ubuntu-18-04/
echo "
###########################
#### INSTALLING MAVEN #####
###########################"
apt-get install maven -y -qq >/dev/null

# https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-18-04-pt
echo "
###########################
### INSTALLING JENKINS ####
###########################"
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
apt-add-repository "deb https://pkg.jenkins.io/debian-stable binary/"
apt-get install jenkins -y -qq >/dev/null

# instalando docker via script de conveniência
echo "
###########################
#### INSTALLING DOCKER ####
###########################"
curl -fsSL https://get.docker.com | bash
systemctl start docker
systemctl enable docker
usermod -aG docker vagrant
