FROM centos:7

RUN sed -i 's/tsflags/\#tsflags/g' /etc/yum.conf
RUN yum -y install man-pages man-db man
RUN yum -y install epel-release
RUN yum -y install python-pip
RUN pip install --upgrade pip
RUN pip install boto3 awscli
RUN echo -e "export HISTSIZE=20000\nexport HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

WORKDIR /root

