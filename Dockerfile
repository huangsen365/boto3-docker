FROM python:2.7-alpine
MAINTAINER huangsen365@gmail.com

RUN pip install boto3 awscli
RUN apk add vim
RUN alias ll='ls --color=auto'
RUN echo "alias ll='ls --color=auto'" >> /etc/profile
WORKDIR /root/dev

CMD ["python"]
