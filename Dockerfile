FROM python:latest

WORKDIR /app

COPY entrypoint.py /bin/runscript

CMD ["runscript"]
