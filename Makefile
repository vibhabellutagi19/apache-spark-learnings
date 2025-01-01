.PHONY: create-virtualenv init

create-virtualenv:
	@echo "Creating virtualenv..."
	python3 -m venv .venv
	. .venv/bin/activate
	@echo "Virtualenv created. To activate it, run: source .venv/bin/activate"

init:
	@echo "Initializing project..."
	uv init

.PHONY: sync
sync:
	@echo "Installing dependencies..."
	uv sync

.PHONY: run
run:
	@echo "Running project..."
	uv run hello.py