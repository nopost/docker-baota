FROM ccr.ccs.tencentyun.com/zihao/docker-baota:_base6.0
MAINTAINER nopost@vip.qq.com

RUN cd /www/server/panel \
    && echo '["linuxsys"]' > ./config/index.json

VOLUME ["/www","/www/wwwroot"]
