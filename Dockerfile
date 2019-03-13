FROM pch18/baota:init

COPY set_default.py /set_default.py

RUN cd /home \
    && wget -O install.sh http://download.bt.cn/install/install_6.0.sh \
    && echo y | bash install.sh \
    && echo '["linuxsys", "nginx", "apache", "mysql", "php-7.3"]' > ./config/index.json

VOLUME ["/www","/www/wwwroot"]
