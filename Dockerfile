FROM python
RUN pip install --no-cache-dir -r requirements.txt
RUN python3 entrypoint.py
