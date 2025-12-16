MAKEFLAGS += --always-make

default: ruff test

ruff:
	ruff format .
	ruff check .

test:
	pytest --doctest-modules
