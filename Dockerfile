FROM python:latest

ADD entrypoint.py /entrypoint.py

ADD requirements.py /requirements.py

RUN chmod +x entrypoint.py

ENTRYPOINT ["/entrypoint.py"]
