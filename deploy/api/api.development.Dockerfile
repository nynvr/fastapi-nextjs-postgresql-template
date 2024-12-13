# Use an official Node runtime as the parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /code

# Copy package.json and package-lock.json
COPY ./apps/api/app/requirements.txt /code/app/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir --upgrade -r /code/app/requirements.txt

# Copy the current directory contents into the container at /app
COPY ./apps/api/app /code/app
COPY ./deploy/api/api.development.run.sh /code/api.run.sh

RUN chmod +x /code/api.run.sh
CMD ["/code/api.run.sh"]