.PHONY: install
install:
	poetry add

.PHONY: migrate
migrate:
	poetry run python3 -m todo.manage migrate

.PHONY: migrations
migrations:
	poetry run python3 -m todo.manage makemigrations

.PHONY: runserver
runserver:
	poetry run python3 -m todo.manage runserver

.PHONY: superuser
superuser:
	poetry run python3 -m todo.manage createsuperuser

.PHONY: update
update: install migrate;