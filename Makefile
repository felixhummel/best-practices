MAKEFLAGS += --always-make

default: ruff test

ruff:
	ruff format .
	ruff check .

test:
	pytest --doctest-modules

upgrade:
	uv sync --upgrade --all-extras --all-groups
