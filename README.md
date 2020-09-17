# Sample FastAPI Project

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
