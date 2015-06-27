FROM debian:latest
MAINTAINER Hǎiliàng Wáng <w@h12.me>

ENV VER 1.1.4

ADD http://dl.chenyufei.info/shadowsocks/$VER/shadowsocks-server-linux64-$VER.gz /usr/local/bin/ss-server.gz
RUN gunzip   /usr/local/bin/ss-server.gz
RUN chmod +x /usr/local/bin/ss-server

ENTRYPOINT ["/usr/local/bin/ss-server"]
