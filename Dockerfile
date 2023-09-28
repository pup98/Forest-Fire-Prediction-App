# Start with the base Python 3.10.9 image
FROM python:3.11


# Set the working directory to /application
WORKDIR /app
# Copy the current directory into the /app directory inside the container
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .
# Expose the specified port
EXPOSE 5000

# Run flask application
CMD ["python", "app.py"]