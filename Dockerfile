FROM pch18/baota:_init
MAINTAINER pch18.cn

COPY set_default.py /set_default.py

RUN cd /home \
    && wget -O install.sh http://download.bt.cn/install/install_6.0.sh \
    && echo y | bash install.sh 
    
