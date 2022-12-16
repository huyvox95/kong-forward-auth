FROM kong/kong-gateway:3.0

WORKDIR /tmp/kong-forward-auth

USER root
RUN apt update && apt upgrade -y
RUN echo 'Asia/Ho_Chi_Minh'> /etc/timezone  && rm -rf /etc/localtime \
    &&  ln -snf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata
RUN apt install -y net-tools vim telnet
COPY . /tmp/kong-forward-auth
RUN luarocks make *.rockspec
RUN rm -rf /tmp/*

USER kong