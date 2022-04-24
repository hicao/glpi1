FROM ubuntu/apache2:latest
RUN apt-get update
RUN apt-get install php8.1 php8.1-intl php8.1-mysql php8.1-zip php8.1-gd php8.1-dom php8.1-ldap php8.1-mbstring php8.1-bz2 php8.1-curl -y
RUN /etc/init.d/apache2 restart
ADD glpi  /var/www/html/glpi/
EXPOSE 80