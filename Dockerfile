FROM python:latest

WORKDIR /app

COPY . .

CMD ["python", "entrypoint.py"]
