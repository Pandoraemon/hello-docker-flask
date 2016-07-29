FROM daocloud.io/python:2.7
MAINTAINER Captain Dao pandoraemon@daocloud.io

RUN mkdir -p /app
WORKDIR /app

ADD requirements.tex requirements.txt
RUN pip install -r requirements.txt

COPY docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 8888
ENTRYPOINT ["docker-enterypoint.sh"]
CMD [""]
