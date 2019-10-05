 #sshd_server
    ssh-keygen -t dsa -f ~/.ssh/id_dsa -P "" && 
    sed -i "s/root.*/root:x:0:0:root:\/root:\/bin\/bash/g" /etc/passwd 
    sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config 
    sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config 
    echo root:nopostBAE8588|chpasswd  
    mkdir -p /var/run/sshd
