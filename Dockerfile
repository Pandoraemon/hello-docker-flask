FROM daocloud.io/python:2.7
MAINTAINER Pandoraemon <pandoraemon@doucloud.io>

RUN mkdir -p /app
WORKDIR /app/

ADD requirements.txt /app/
RUN pip install -r ./requirements.txt

COPY docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 80
CMD ./docker-entrypoint.sh

