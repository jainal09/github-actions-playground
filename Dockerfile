FROM python:latest

ADD entrypoint.py /entrypoint.py

RUN chmod +x entrypoint.py

ENTRYPOINT ["/entrypoint.py"]
