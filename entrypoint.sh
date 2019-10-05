mkdir  /var/run/sshd/
sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config
ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key





for file in `ls /etc/init.d`
do if [ -x /etc/init.d/${file} ];  then 
    /etc/init.d/$file restart
fi done
crond
bt default
tail -f /dev/null
