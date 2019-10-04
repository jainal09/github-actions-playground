FROM python:latest

# Add files to the image
ADD entrypoint.py /entrypoint.py
ADD requirements.txt /requirements.txt

# Save ENV var in a temp file
RUN $TEST_VAR > /temp_var

# Install dependencies and make script executable
RUN pip install -r requirements.txt
RUN chmod +x entrypoint.py

# Run script with the ENV var
RUN TEMP_VAR=$(cat /temp_var); /entrypoint.py
