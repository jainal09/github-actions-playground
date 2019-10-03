FROM python:latest

ADD entrypoint.py /entrypoint.py
ADD requirements.txt /requirements.txt

RUN echo "$TEST_VAR"

RUN pip install -r requirements.txt
RUN chmod +x entrypoint.py
ENTRYPOINT ["/entrypoint.py"]
