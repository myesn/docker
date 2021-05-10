# 指定使用的镜像源
FROM centos:6.7
LABEL name="myesn"
LABEL email="myesn@foxmail.com"

# RUN 指令告诉 docker 在镜像内执行命令
RUN /bin/echo 'root:123456' |chpasswd
RUN useradd myesn
RUN /bin/echo 'myesn:123456' |chpasswd
RUN /bin/echo -e "LANG=\"en_US.UTF-8\"" >/etc/default/local
EXPOSE 22
EXPOSE 80
CMD /usr/sbin/sshd -D

# 每一个指令都会在镜像上构建一个新的层，每一个指令的前缀都必须是大写的
# 最后通过 docker build 命令来构建一个镜像