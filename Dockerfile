# Use an official Python runtime as base image
FROM python:3.8

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
