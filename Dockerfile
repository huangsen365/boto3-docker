FROM python:2.7-alpine
MAINTAINER huangsen365@gmail.com

RUN apk add man man-pages
RUN apk add vim
RUN apk add tzdata
RUN apk add bash bash-doc bash-completion
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN pip install boto3 awscli
#RUN pip install aws-shell
#RUN echo -e "export HISTSIZE=20000\nexport HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc
COPY ll_color_auto.sh /etc/profile.d/
#COPY long_history.sh /etc/profile.d/
WORKDIR /root/dev
COPY .bashrc /root/.bashrc

CMD ["python"]
