FROM python:latest

ADD entrypoint.py /entrypoint.py

ENTRYPOINT ["/entrypoint.py"]
