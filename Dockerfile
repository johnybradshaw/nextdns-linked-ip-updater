FROM alpine:latest
# Update all the things
RUN apk update && apk upgrade --no-cache

# Install curl
RUN apk --no-cache add curl

# Setup the https://link-ip.nextdns.io/<config-id>/<config-secret>
ENV config_id null
ENV config_secret null

# Add this to the crontab
RUN mkdir -p /scripts
COPY cron.sh /root/cron.sh
RUN chmod +x /root/cron.sh

# Set working dir
WORKDIR /root/

# Keep it running
CMD ["/root/cron.sh"]
