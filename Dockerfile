FROM python:2.7-alpine
MAINTAINER huangsen365@gmail.com

RUN apk add man man-pages
RUN apk add vim
RUN pip install boto3 awscli
#RUN echo -e "export HISTSIZE=20000\nexport HISTTIMEFORMAT=\"%F %T \"" >> /etc/bachrc
COPY ll_color_auto.sh /etc/profile.d/
#COPY long_history.sh /etc/profile.d/
WORKDIR /root/dev

CMD ["python"]
