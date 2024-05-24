
# MkDocs with Nginx, htpasswd, and Docker

This repository contains a MkDocs (material theme) configured to run with Nginx and basic authentication (htpasswd) using Docker.


# Project Structure

```
├── compose.yml
├── Dockerfile
├── entrypoint.sh
├── logs
│   └──log
├── mkdocs
│   ├── docs
│   │   ├── img
│   │   │   └── zelda-dark-world.png
│   │   ├── index.md
│   │   └── others.md
│   └── mkdocs.yml
├── nginx.conf
├── poetry.lock
├── poetry.toml
├── pyproject.toml
├── README.md
└── supervisord.conf
```

    mkdocs: Directory containing the MkDocs documentation files.
    Dockerfile: Dockerfile to build the MkDocs project.
    nginx.conf: Nginx configuration file.
    .htpasswd: File containing the usernames and passwords for basic authentication.
    docker-compose.yml: Docker Compose file to manage Docker containers.

## Prerequisites

    - Docker installed on your machine.

## Create the .htpasswd file:

You can use the htpasswd utility to create this file:


```bash
    htpasswd -c .htpasswd username
```

    Follow the prompts to set the password for username.

## Running the Project

To start the MkDocs site with Nginx and basic authentication, run:

```bash
docker-compose up -d
```

## Customization

### MkDocs Configuration:

    Edit the mkdocs.yml file to customize your MkDocs site.

### Nginx Configuration:

    Edit the nginx.conf file to customize the Nginx setup.

### htpasswd:

    Use the htpasswd utility to manage users and passwords in the .htpasswd file.

