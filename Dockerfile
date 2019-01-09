FROM python:2.7-alpine
MAINTAINER huangsen365@gmail.com

RUN pip install boto3
WORKDIR /root/dev

CMD ["python"]
