FROM kong/kong-gateway:3.1

USER root
WORKDIR /tmp/kong-forward-auth
COPY . /tmp/kong-forward-auth
RUN luarocks make *.rockspec
RUN rm -rf /tmp/kong-forward-auth

USER kong