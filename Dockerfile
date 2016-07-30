FROM daocloud.io/python:2.7
MAINTAINER Pandoraemon <pandoraemon@doucloud.io>

RUN mkdir -p /app
WORKDIR /app/

ADD requirements.txt /app/
RUN pip install -r ./requirements.txt


EXPOSE 80
CMD ["python", "./hello.py"]

