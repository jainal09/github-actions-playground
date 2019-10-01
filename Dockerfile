FROM python:latest

ADD entrypoint.py /entrypoint.py

ADD requirements.txt /requirements.txt

RUN chmod +x entrypoint.py

ENTRYPOINT ["/entrypoint.py"]
