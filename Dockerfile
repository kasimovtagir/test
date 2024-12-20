FROM ubuntu:22.04

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && \
    apt-get install -y nginx php-fpm php-mysql mc


# Expose port 80 to the outside world
EXPOSE 80

# Run both Nginx and PHP-FPM
CMD service php8.1-fpm start && nginx -g 'daemon off;'
