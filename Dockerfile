# Alpine image
FROM alpine:3.14

# Install curl
RUN apk add bash && apk add --no-cache curl && mkdir -p /etc/synthetic-pl-test/

# Set the working directory
WORKDIR /etc/synthetic-pl-test/

# Copy the current directory contents into the container at /etc/synthetic-pl-test/
COPY curl.sh /etc/synthetic-pl-test/

RUN chmod u+x curl.sh

# Define the command to run the application
SHELL ["/bin/bash"]

CMD ["/bin/bash", "-c", "./curl.sh && sleep 30m"]