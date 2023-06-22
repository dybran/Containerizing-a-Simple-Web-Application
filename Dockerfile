FROM ubuntu:latest
LABEL "Author"="Solomon"
LABEL "Project"="mini-finance"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD mini_finance.tar.gz /var/www/html





