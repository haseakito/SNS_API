FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the dependencies
COPY ./requirements.txt /app/requirements.txt

# Install the dependencies
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

# Copy the source codes
COPY ./app/ /app/

# Run the server
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80" ]