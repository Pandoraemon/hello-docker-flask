FROM daocloud.io/python:2.7
MAINTAINER Pandoraemon <pandoraemon@doucloud.io>

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN pip install -r ./requirements.txt


EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["hello.py"]

