FROM rpawel/ubuntu:bionic

RUN apt-get -q -y update \
 && apt-get dist-upgrade -y --no-install-recommends \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install awscli \
 && useradd -d /var/www/app --no-create-home --shell /bin/bash -g www-data -G adm user \
 && DEBIAN_FRONTEND=newt
