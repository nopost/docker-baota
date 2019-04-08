FROM ccr.ccs.tencentyun.com/zihao/docker-baota:_base6.0
MAINTAINER nopost@vip.qq.com

RUN cd /www/server/panel \
    && bash ./install/install_soft.sh 1 install nginx 1.15 \
    && bash ./install/install_soft.sh 1 install php 7.3 \
    && echo '["linuxsys", "nginx", "php-7.3"]' > ./config/index.json

VOLUME ["/www","/www/wwwroot"]
