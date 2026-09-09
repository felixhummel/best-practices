MAKEFLAGS += --always-make

default: prek ruff test

prek:
	prek run --all-files

ruff:
	ruff format .
	ruff check .

test:
	pytest --doctest-modules

upgrade:
	uv sync --upgrade --all-extras --all-groups
