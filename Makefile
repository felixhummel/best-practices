MAKEFLAGS += --always-make

default: ruff mypy test

ruff:
	ruff .

mypy:
	mypy .

test:
	pytest --doctest-modules
