FROM jetbrains/teamcity-minimal-agent

USER root

RUN apt update && apt upgrade -y

RUN apt install git -y
RUN apt install sudo -y
RUN apt install wget -y
RUN apt install software-properties-common -y
RUN apt install sshpass -y

RUN git clone https://github.com/Fabricio872/php-dev
RUN chmod u+x php-dev/install.sh &&  ./php-dev/install.sh

RUN mkdir /root/.ssh
RUN echo "Host *\n    StrictHostKeyChecking no" > /root/.ssh/config -e

COPY buildAgent.dist.properties /opt/buildagent/conf/buildAgent.dist.properties

CMD ["/run-services.sh"]
