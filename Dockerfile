FROM centos:7
MAINTAINER nopost@vip.qq.com 

#更新系统
RUN yum -y update \
    && yum -y install wget unzip telnet passwd openssl openssh-server  openssh-clients

#设置entrypoint和letsencrypt映射到www文件夹下持久化
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
EXPOSE 22
