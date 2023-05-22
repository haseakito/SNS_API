FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy the dependencies
COPY ./requirements.tsx /requirements.tsx

# Install the dependencies
RUN pip install --no-cache-dir --upgrade -r /requirements.txt

# Copy the source codes
COPY ./app /

# Run the server
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80" ]