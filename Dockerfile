FROM jetbrains/teamcity-minimal-agent

USER root

RUN apt update && apt upgrade -y
RUN apt -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php -y
RUN apt install php7.2-cli php7.2-xml php7.2-gd php7.2-zip php7.2-mysql php7.2-sqlite3 -y
RUN apt install php7.2-mbstring php7.2-intl php7.2-curl -y
RUN apt install php7.2-imagick -y
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update
RUN apt install nodejs -y
RUN apt update && apt upgrade -y
RUN apt install npm -y
RUN apt install yarn -y
RUN apt install apt-transport-https ca-certificates curl software-properties-common -y
RUN apt install git -y
RUN apt install composer -y
RUN apt install zip -y
RUN apt install rsync -y
RUN apt install sshpass -y
RUN apt install python2.7 -y
RUN npm install -g sass

RUN apt install dirmngr apt-transport-https lsb-release ca-certificates -y
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt install nodejs -y

RUN echo -e "\ndate.timezone = Europe/Bratislava" >> /etc/php/7.2/cli/php.ini
RUN mkdir /root/.ssh
RUN echo -e "Host *\n    StrictHostKeyChecking no" >> /root/.ssh/config

CMD ["/run-services.sh"]
