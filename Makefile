.PHONY: install
install:
	poetry add

.PHONY: migrate
migrate:
	poetry run py -m todo.manage migrate

.PHONY: migrations
migrations:
	poetry run py -m todo.manage makemigrations

.PHONY: runserver
runserver:
	poetry run py -m todo.manage runserver

.PHONY: superuser
superuser:
	poetry run py -m todo.manage createsuperuser

.PHONY: update
update: install migrate;