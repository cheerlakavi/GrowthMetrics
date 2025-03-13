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
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
