FROM python:2.7-alpine
MAINTAINER huangsen365@gmail.com

RUN pip install boto3 awscli
RUN apk add vim
COPY ll_color_auto.sh /etc/profile.d/
WORKDIR /root/dev

CMD ["python"]
