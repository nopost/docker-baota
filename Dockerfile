FROM centos:7
MAINTAINER nopost@vip.qq.com 

#更新系统
RUN yum -y update \
    && yum -y install wget passwd openssl openssh-server  openssh-clients

#设置entrypoint和letsencrypt映射到www文件夹下持久化
COPY entrypoint.sh /entrypoint.sh
RUN mkdir -p /www/letsencrypt \
    && ln -s /www/letsencrypt /etc/letsencrypt \
    && rm -f /etc/init.d \
    && mkdir /www/init.d \
    && ln -s /www/init.d /etc/init.d \
    && chmod +x /entrypoint.sh

CMD /entrypoint.sh
EXPOSE 8888 888 443 80 21 20
HEALTHCHECK --interval=5s --timeout=3s CMD curl -fs http://localhost/ || exit 1 
