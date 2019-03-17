FROM pch18/baota:base6.0

WORKDIR /www/server/panel
RUN echo '["linuxsys"]' > ./config/index.json

VOLUME ["/www","/www/wwwroot"]
