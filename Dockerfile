FROM ccr.ccs.tencentyun.com/zihao/docker-baota:_init
MAINTAINER nopost@vip.qq.com

COPY set_default.py /set_default.py

RUN cd /home \
    && wget -O install.sh http://download.bt.cn/install/install_6.0.sh \
    && echo y | bash install.sh
