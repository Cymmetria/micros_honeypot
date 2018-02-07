FROM python:2-alpine

COPY . /usr/src/app/
WORKDIR /usr/src/app

EXPOSE 8080

CMD ['python', 'micros_server.py']
