FROM registry.cn-hangzhou.aliyuncs.com/zihao/docker_baota:base6.0
MAINTAINER nopost@vip.qq.com

RUN cd /www/server/panel \
    && bash ./install/install_soft.sh 1 install apache 2.4 \
    && bash ./install/install_soft.sh 1 install mysql mariadb_10.3 \
    && bash ./install/install_soft.sh 1 install php 7.3 \
    && echo '["linuxsys", "apache", "mysql", "php-7.3"]' > ./config/index.json

VOLUME ["/www","/www/wwwroot"]
