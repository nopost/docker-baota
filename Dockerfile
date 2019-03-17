FROM pch18/baota:_base6.0
MAINTAINER pch18.cn

RUN RUN cd /www/server/panel \
    && echo '["linuxsys"]' > ./config/index.json

VOLUME ["/www","/www/wwwroot"]
