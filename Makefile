MAKEFLAGS += --always-make

default: ruff ty test

ruff:
	ruff format .
	ruff check .

ty:
	ty check .

test:
	pytest --doctest-modules
