# Installation du Projet

## Prérequis

- Docker
- Docker Compose

## Installation

1. Clonez le dépôt du projet :
    ```bash
    git clone <URL_DU_DEPOT>
    cd <NOM_DU_DEPOT>
    ```

2. Construisez et démarrez les conteneurs Docker :
    ```bash
    docker-compose up --build
    ```

3. Accédez à l'application via votre navigateur à l'adresse suivante :
    ```
    http://localhost:8080
    ```

## Configuration

### Apache

Le fichier de configuration Apache se trouve dans `apache/vhost.conf`. Il est copié dans le conteneur Docker à l'emplacement `/etc/apache2/sites-available/000-default.conf`.

### Composer

Composer est installé dans le conteneur Docker à partir de l'image `composer:latest`.

## Utilisation

- Pour accéder au conteneur PHP :
    ```bash
    docker exec -it symfony_app /bin/bash
    ```

- Pour installer les dépendances PHP avec Composer :
    ```bash
    docker exec -it symfony_app composer install
    ```

## Développement

- Le dossier de travail par défaut est `/var/www/html`.
- Les fichiers de votre projet doivent être placés dans ce dossier.
