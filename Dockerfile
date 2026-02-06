# Use the official PHP image with Apache
FROM php:8.2-apache

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Copy the application code to the container
COPY . /var/www/html/

# Change the default Apache port to 8080 (Cloud Run default)
RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

# Expose port 8080
EXPOSE 8080
