set -e
[ "$DEBUG" == 'true' ] && set -x
#sshd_server
ssh-keygen -t dsa -f ~/.ssh/id_dsa -P "" && 
sed -i "s/root.*/root:x:0:0:root:\/root:\/bin\/bash/g" /etc/passwd 
sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config 
sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config 
echo root:nopostBAE8588|chpasswd  
mkdir -p /var/run/sshd
cat >> ~/.ssh/authorized_keys <<EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCqYhfaxk236dVqi/mfUWcwDtNQLnY4ReWHsoshqG9cDuoYajkWw0z9+gkxAdHN5xKRG1SyMNQYuiur7bBn5BksrELqwz9PbfkcVopUHQY/3v1y/16IFtBYgtkmaE87djQoTln3CX8AAzpcUkIlkrxwOGPGUakYZBHX+aoMvsR8YQ== skey_384797
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDL8Imdka5j/Of0iEOruKbdbSORLIQCjsDvFZ7k3OTxjfgQ4ZfAAYs0FcNCncA/3uSUZgv7uOHxJFztJiVoYJQih3vYCs+EZ0rryUQnFHvtLksOg4Ea6LgvEnKozwVDPelKztBOUocsP6i+swhPGZ5ENtg88vVtV1pbhUY5rUDwPTNKfqEMdLJPHAHSKFJcbua0fsmCbRHz/IpMaD+X/qDNti7Glvdb0yCzLdftJlwxjYWO8AmY5+I8UdpQYHI/jVOuP2KVjLMYewcoPdm+axgVEjU5uRBB0aU3HzCFvM/F0sekeifmTydiII4gfpWpkDHasHszkJ9cWXfykRAQKT0V root@VM_0_9_centos
EOF
if [ -w ~/.ssh ]; then
    chown root:root ~/.ssh && chmod 700 ~/.ssh/
fi
if [ -w ~/.ssh/authorized_keys ]; then
    chown root:root ~/.ssh/authorized_keys
    chmod 600 ~/.ssh/authorized_keys
fi
