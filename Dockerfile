# Use lightweight Python image
FROM python:3.12-slim

# Set work directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source code
COPY . .

# Expose the API port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
