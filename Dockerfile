# Use the official PHP image with Apache
FROM php:7.4-apache

# Copy the application source code to the container
COPY . /var/www/html/

# Set file permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 8081
EXPOSE 8081

# Start Apache in the foreground
CMD ["apache2-foreground"]
