FROM python:latest

# Add files to the image
ADD entrypoint.py /entrypoint.py
ADD requirements.txt /requirements.txt

# Save ENV var in a temp file
RUN $TEST_VAR > /temp_var

# Install dependencies and make script executable
RUN pip install -r requirements.txt
RUN chmod +x entrypoint.py

RUN echo "temp var: "
RUN cat /temp_var

# Run script with the ENV var
ENTRYPOINT export TEST_VAR="$INPUT_TEST_VAR"; /entrypoint.py
