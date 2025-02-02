# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local requirements.txt file to the container's /app directory
COPY requirements.txt requirements.txt

# Install the required Python packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the local directory into the container's /app directory
COPY . .

# Set the command to run when the container starts
CMD ["python", "-u", "backup_script.py"]