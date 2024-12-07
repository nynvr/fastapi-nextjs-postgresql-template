# Use an official Node runtime as the parent image
FROM node:20.18-slim

# Set the working directory in the container
WORKDIR /code

# Copy package.json and package-lock.json
COPY ./apps/web/app/package*.json ./app/

# Install dependencies
RUN npm --prefix ./app install

# Copy the current directory contents into the container at /app
COPY ./apps/web/app /code/app
COPY ./deploy/web/web.development.run.sh /code/web.run.sh

RUN chmod +x /code/web.run.sh
CMD ["/code/web.run.sh"]