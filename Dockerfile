FROM python:latest

COPY . .

CMD ["python", "entrypoint.py"]
