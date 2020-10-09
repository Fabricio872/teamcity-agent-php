FROM jetbrains/teamcity-minimal-agent

USER root

RUN apt update && apt upgrade -y
RUN apt -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php -y
RUN apt install php-cli php-xml php-gd php-zip php-mysql php-sqlite3 -y
RUN apt install php-mbstring php-intl php-curl -y
RUN apt install php-imagick -y
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update
RUN apt install nodejs -y
RUN apt install npm -y
RUN apt install yarn -y
RUN apt install apt-transport-https ca-certificates curl software-properties-common -y
RUN apt install git -y
RUN apt install composer -y
RUN apt install zip -y
RUN apt install rsync -y
RUN apt install sshpass -y

RUN apt install dirmngr apt-transport-https lsb-release ca-certificates -y
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt install nodejs -y

RUN echo -e "\ndate.timezone = Europe/Bratislava" >> /etc/php/7.4/cli/php.ini

CMD ["/run-services.sh"]
