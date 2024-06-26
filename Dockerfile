[12:44 p.m.] Hariprasath Durairaj
# Use official Python image as the base image

FROM python:3.9-slim
 
# Set environment variables

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1
 
# Set working directory in the container

WORKDIR /app
 
# Copy the requirements file and install dependencies

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt
 
# Copy the application code into the container

COPY . /app/
 
# Expose the Flask app port

EXPOSE 5000
 
# Command to run the application

CMD ["python", "app.py"]
