# Build the Docker image
docker build -t fastapi-app .

# Optionally, run the Docker container to test locally
docker run -p 8000:8000 fastapi-app 
