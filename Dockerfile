FROM pch18/baota:_base6.0
MAINTAINER pch18.cn

WORKDIR /www/server/panel

RUN echo '["linuxsys"]' > ./config/index.json

VOLUME ["/www","/www/wwwroot"]
