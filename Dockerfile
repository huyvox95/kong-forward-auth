FROM kong/kong-gateway:3.1

USER root
WORKDIR /tmp/kong-forward-auth
COPY ./kong-forward-auth-0.1.0-0.rockspec /tmp/kong-forward-auth
COPY ./src /tmp/kong-forward-auth/src
RUN luarocks make *.rockspec
RUN rm -rf /tmp/kong-forward-auth

USER kong