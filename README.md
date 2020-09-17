# Sample FastAPI Project

![Continuous Integration and Delivery](https://github.com/evanepio/fastapi-tdd-docker/workflows/Continuous%20Integration%20and%20Delivery/badge.svg?branch=master)

## Build Stuff

Rebuild image

```sh
docker-compose up -d --build
```

## Test Stuff

Run tests:

```sh
docker-compose exec web python -m pytest
```

## Database Stuff

Connect to the database with psql:

```sh
docker-compose exec web-db psql -U postgres
```

Create db schema:

```sh
docker-compose exec web python app/db.py
```
