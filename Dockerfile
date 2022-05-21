# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /assignment-docker

# Expose port 8000 for your FastAPI server.
EXPOSE 3000

# Copy your codebase into the Docker container.
COPY ./requirements.txt .

# Install Python requirements using Pip.
RUN pip install -r requirements.txt

COPY . .
# Run FastAPI server on the port exposed above.
CMD ["uvicorn","main:app","--host=0.0.0.0","--reload","--port","3000"]