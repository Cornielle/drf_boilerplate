FROM python:3.9

# Install SSH client
RUN apt-get update && apt-get install -y openssh-client

# Set environment variables (This allows us to reac the errors directly on the console rather than having it just wrote in logs)
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# Copy requirements.txt file
COPY requirements.txt /app/requirements.txt

# Install python dependencies
RUN pip install -r requirements.txt

# Copy the application to the working directory
COPY . /app/

# Start the SSH tunnel
CMD python manage.py runserver 0.0.0.0:8000
