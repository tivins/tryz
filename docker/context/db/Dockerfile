FROM mariadb:10.6

VOLUME /var/lib/mysql
VOLUME /var/log/mysql

RUN \
    useradd -ms /bin/bash admin                         && \
    echo "admin:admin" | chpasswd                       && \
    adduser admin sudo                                  && \
    touch /etc/mysql/conf.d/99-custom.cnf               && \
    chown admin:admin /etc/mysql/conf.d/99-custom.cnf

USER admin
