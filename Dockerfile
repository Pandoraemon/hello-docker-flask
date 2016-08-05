FROM daocloud.io/python:2.7
MAINTAINER Pandoraemon <pandoraemon@doucloud.io>

RUN apt-get update
RUN apt-get -y install sqlite3
RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN pip install -r ./requirements.txt


EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["hello.py"]

