# Ref: https://github.com/wfg/docker-openvpn-client/blob/master/Dockerfile
FROM alpine:3.14

# Turning off all cases for vanilla deployment
ENV VPN_LOG_LEVEL=3 \
    HTTP_PROXY=off \
    SOCKS_PROXY=off

RUN apk add --no-cache \
        bind-tools \
        busybox-extras \
        dante-server \
        openvpn \
        bash \
        tinyproxy
