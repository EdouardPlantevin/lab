FROM php:8.2-apache

# Installe les extensions nécessaires
RUN apt-get update && apt-get install -y \
    libicu-dev \
    libxml2-dev \
    unzip \
    zip \
    git \
    && docker-php-ext-install intl pdo pdo_mysql

# Active le module Apache Rewrite
RUN a2enmod rewrite

# Copie les fichiers de configuration d’Apache
COPY apache/vhost.conf /etc/apache2/sites-available/000-default.conf

# Définit le dossier de travail
WORKDIR /var/www/html

# Installe Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
