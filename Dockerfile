FROM debian:latest
ENV OPENFIRE_VERSION=4.5.2 \
    OPENFIRE_USER=openfire \
    OPENFIRE_DATA_DIR=/var/lib/openfire \
    OPENFIRE_LOG_DIR=/var/lib/openfire \
    OPENFIRE_LIB_DIR=/usr/share/openfire-custom-libs 

RUN apt update && apt upgrade -y \
    && apt install wget sudo default-jre -y \
    && apt clean \
    && wget --no-verbose https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_${OPENFIRE_VERSION}_all.deb \
    -O /usr/src/openfire_${OPENFIRE_VERSION}_all.deb \
    && dpkg -i /usr/src/openfire_${OPENFIRE_VERSION}_all.deb \
    && mv /var/lib/openfire/plugins/admin /usr/share/openfire/plugin-admin \
    && rm -f /usr/src/openfire_4.5.2_all.deb \
    && rm -rf /var/lib/apt/lists/*
COPY conf.sh /sbin/conf.sh
RUN chmod 755 /sbin/conf.sh
EXPOSE 5222/tcp 5223/tcp 5229/tcp 5262/tcp 5263/tcp 5269/tcp 5270/tcp 5275/tcp \
       5276/tcp 7070/tcp 7443/tcp 7777/tcp
VOLUME ["${OPENFIRE_DATA_DIR}"]
ENTRYPOINT ["/sbin/conf.sh"]