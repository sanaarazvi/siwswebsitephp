# Use official PHP image with Apache
FROM php:8.2-apache

# Enable Apache rewrite module (optional but recommended)
RUN a2enmod rewrite

# Copy your project files to Apache document root
COPY . /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port (Render forwards automatically)
EXPOSE 80
