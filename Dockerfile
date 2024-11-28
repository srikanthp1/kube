# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the zapp folder (where the FastAPI app is) into the container
COPY ./zapp /app/zapp

# Install dependencies
RUN pip install --no-cache-dir fastapi uvicorn

# Expose port 8000 for the FastAPI app
EXPOSE 8000

# Command to run the FastAPI server
CMD ["uvicorn", "zapp.main:app", "--host", "0.0.0.0", "--port", "8000"]
