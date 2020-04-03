FROM centos:8
# RUN curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-8.repo
RUN yum makecache && yum update -y
RUN yum install -y openssh-server passwd
RUN ssh-keygen -q -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N '' && ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N '' && ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key  -N ''
RUN echo root | passwd --stdin root
ENTRYPOINT [ "/usr/sbin/sshd", "-D" ]
