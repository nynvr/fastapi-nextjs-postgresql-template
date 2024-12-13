# Use an official Node runtime as the parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY ./apps/api/app/requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copy the current directory contents into the container at /app
COPY ./apps/api/app .
COPY ./deploy/api/api.development.run.sh /scripts/api.run.sh

RUN chmod +x /scripts/api.run.sh
CMD ["/scripts/api.run.sh"]