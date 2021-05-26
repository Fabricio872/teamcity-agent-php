FROM jetbrains/teamcity-minimal-agent

USER root

RUN apt update && apt upgrade -y

RUN apt install git -y
RUN git clone https://github.com/Fabricio872/php-dev
RUN chmod u+x php-dev/install.sh &&  ./php-dev/install.sh

RUN echo -e "\ndate.timezone = Europe/Bratislava" >> /etc/php/7.4/cli/php.ini
RUN mkdir /root/.ssh
RUN echo -e "Host *\n    StrictHostKeyChecking no" >> /root/.ssh/config

CMD ["/run-services.sh"]
