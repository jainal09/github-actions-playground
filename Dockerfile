FROM python:latest

COPY entrypoint.py /usr/local/share/

CMD ["entrypoint.py"]
