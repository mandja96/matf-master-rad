.PHONY: dev check

dev:
	rm -rf master-venv
	python3.9 -m venv master-venv
	source master-venv/bin/activate && \
		python -m pip install --upgrade pip && \
		python -m pip install -r requirements.txt
	pre-commit install

check:
	pre-commit run --all-files
