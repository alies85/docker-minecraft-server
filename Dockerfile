# Use a lightweight base image with wget and unzip
FROM alpine:latest

# Install wget and unzip
RUN apk add --no-cache wget unzip

# Set the working directory
WORKDIR /data

# The command to run when starting the container
CMD ["sh", "-c", "tail -f /dev/null"]
