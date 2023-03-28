# Base image
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the environment variables
ENV FLASK_APP=app.py
ENV FLASK_ENV=development

# Expose the port
EXPOSE 5000

# Start the application
CMD ["flask", "run", "--host=0.0.0.0"]
