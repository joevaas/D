
# Use a lightweight Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt update && apt install -y git wget build-essential python3-dev


# Copy all project files into the image
COPY . .

# Make the mp4decrypt binary executable
RUN chmod +x mp4decrypt

# Upgrade pip and install Python dependencies
RUN pip3 install --upgrade pip && pip3 install -r requirements.txt

# Default command to run the bot
CMD ["python3", "tg.py"]
