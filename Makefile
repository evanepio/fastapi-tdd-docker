.PHONY: build
build:
	docker-compose up -d --build

.PHONY: test
test: build
	docker-compose exec web python -m pytest

.PHONY: test/unit
test/unit: build
	docker-compose exec web pytest -k "unit" -n auto

.PHONY: db
db: build
	docker-compose exec web python app/db.py

.PHONY: coverage
coverage: build
	docker-compose exec web python -m pytest --cov="."

.PHONY: coverage/html
coverage/html: build
	docker-compose exec web python -m pytest --cov="." --cov-report html
	open project/htmlcov/index.html

.PHONY: lint
lint: build
	docker-compose exec web flake8 .
	docker-compose exec web black . --check
	docker-compose exec web /bin/sh -c "isort ./**/*.py --check-only"
