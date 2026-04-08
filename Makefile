.PHONY: install test clean help

VENV = .venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip

help:
	@echo "Usage:"
	@echo "  make install    Install dependencies and setup virtualenv"
	@echo "  make test       Run rendering tests"
	@echo "  make clean      Remove build artifacts and virtualenv"

install:
	bash install.sh

test:
	$(PYTHON) -m pytest scripts/test_render.py || $(PYTHON) scripts/local_render.py mermaid "graph TD; A-->B"

clean:
	rm -rf $(VENV)
	rm -rf runs/*
	find . -type d -name "__pycache__" -exec rm -rf {} +
