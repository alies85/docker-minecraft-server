# Use a lightweight base image with wget and unzip
FROM alpine:latest

# Install wget and unzip
RUN apk add --no-cache wget unzip

# Set the working directory
WORKDIR /data

# Download the data.zip file
RUN wget -O data.zip https://32fa00fcde-file-browser.darkube.app/api/public/dl/x-8zfB2c/

# Extract the data.zip file
RUN unzip data.zip

# Delete the data.zip file
RUN rm data.zip

# The command to run when starting the container
CMD ["sh", "-c", "tail -f /dev/null"]
