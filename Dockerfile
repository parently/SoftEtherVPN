FROM ubuntu:trusty

MAINTAINER Pavel Sutyrin <p.sutyrin@parently.ru>

COPY build.sh /build.sh
COPY run.c /root
RUN bash /build.sh \
    && rm /build.sh

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /opt

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 500/udp 4500/udp 1701/tcp

CMD ["/usr/local/sbin/run"]
