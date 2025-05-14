# Use the official Python image as a parent image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the local files into the container
COPY . /app

# Expose the port that the Python HTTP server will run on
EXPOSE 8000

# Run Python's HTTP server on port 8000
CMD ["python3", "-m", "http.server", "8000"]
