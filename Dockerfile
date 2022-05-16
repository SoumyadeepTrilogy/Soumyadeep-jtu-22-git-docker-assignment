# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /assignment/docker

# Expose port 8000 for your FastAPI server.
EXPOSE 8000

# Install Python requirements using Pip.
RUN pip install -r requirements.txt

# Copy your codebase into the Docker container.
COPY . .

# Run FastAPI server on the port exposed above.
