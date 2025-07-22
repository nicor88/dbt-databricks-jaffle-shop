.PHONY: init
init: clean init-venv init-env
	uv run dbt deps;

.PHONY: init-venv
init-venv:
	uv venv --python=3.12;
	uv sync;

.PHONY: clean
clean:
	rm -rf .venv;
	rm -rf target;
	rm -rf dbt_packages;
	rm -rf logs;
	rm -rf .user.yml;

.PHONY: init-env
init-env:
	@if [ -f .env ]; then \
		touch .env; \
	else \
		cp .env.template .env; \
	fi

dbt-check:
	. .env;
	uv run dbt debug;

dbt-docs:
	uv run dbt docs generate;
	uv run dbt docs serve;
