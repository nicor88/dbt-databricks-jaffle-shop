# dbt-databricks-jaffle-shop
A sample project showcasing how to use dbt with Databricks, featuring the Jaffle Shop data model.

## Requirements
* uv - follow [these instructutions](https://docs.astral.sh/uv/getting-started/installation/) for installation

## Getting started
1. Be sure to have uv installed
2. Run `make init`
3. Be sure to put all relevant environment variable inside `.env` file
    * for `TOKEN` generate a PAT token in Databricks interface. Going to Settings (Top Right) -> Developer -> Access Token
4. Run `make dbt-check`
