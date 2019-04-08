FROM registry.cn-hangzhou.aliyuncs.com/zihao/docker_baota:base6.0
MAINTAINER nopost@vip.qq.com

RUN cd /www/server/panel \
    && echo '["linuxsys"]' > ./config/index.json

VOLUME ["/www","/www/wwwroot"]
