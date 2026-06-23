# DataCamp Containerization - Sample Dockerfile for Python App

# Use a lightweight Python image as the base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install required Python libraries (Pandas, Numpy)
RUN pip install --no-cache-dir pandas numpy

# Define the default command to run when the container starts
CMD ["python", "main_analysis.py"]
