
#    echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
#    git clone git@github.com:path/to/private/repository
if ! [ `which ansible` ]; then
#    wget http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
    sudo rpm -Uvh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
    sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
    sudo yum -y install ansible
fi

#cat /vagrant/ansible/files/authorized_keys >> ~/.ssh/authorized_keys
ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/site.yml
