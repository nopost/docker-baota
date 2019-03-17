FROM pch18/baota:init

COPY set_default.py /set_default.py

RUN cd /home \
    && wget -O install.sh http://download.bt.cn/install/install_6.0.sh \
    && echo y | bash install.sh 
