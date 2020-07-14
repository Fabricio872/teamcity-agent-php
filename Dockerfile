FROM jetbrains/teamcity-minimal-agent

USER root

RUN apt update && apt upgrade -y
RUN apt -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php -y
RUN apt install php-cli php-xml php-gd php-zip php-mysql php-sqlite3 -y
RUN apt install php-mbstring php-intl php-curl -y
RUN apt install npm yarn -y
RUN apt install apt-transport-https ca-certificates curl software-properties-common -y
RUN apt install git -y
RUN apt install composer -y
RUN echo -e "\ndate.timezone = Europe/Bratislava" >> /etc/php/7.4/cli/php.ini

CMD ["/run-services.sh"]