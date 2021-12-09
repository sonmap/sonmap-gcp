sudo yum -y update\n
sudo yum -y install docker docker-registry\n
sudo yum -y install wget \n
sudo yum -y install unzip \n
sudo systemctl  enable docker.service\n
sudo systemctl start docker.service\n
sudo docker pull centos\n
sudo docker run -i -t centos /bin/bash\n
sudo yum -y install java-1.8.0-openjdk-devel.x86_64 \n
sudo echo -e "\n export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-2.el7_8.x86_64 PATH=$PATH:$JAVA_HOME/bin \n export PATH" >> /etc/profile  \n
sudo source /etc/profile \n
sudo wget https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_linux_amd64.zip \n
sudo unzip terraform_0.12.12_linux_amd64.zip \n
sudo mv terraform /usr/bin/ \n
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \n
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl \n
sudo wget http://mirror.navercorp.com/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz \n
sudo tar xvzf apache-maven-3.6.3-bin.tar.gz \n
sudo echo -e "\n export MAVEN_HOME=/usr/local/apple/Tools/apache-maven-3.6.3 PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin \n export PATH" >> /etc/profile \n
sudo  yum  -y install git \n
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo \n
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key \n
sudo yum  -y install jenkins \n
sudo systemctl start jenkins \n 
