FROM centos:7
MAINTAINER nopost@vip.qq.com 

#更新系统
RUN yum -y update \
    && yum -y install wget unzip telnet passwd openssl openssh-server  openssh-clients

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config"]
