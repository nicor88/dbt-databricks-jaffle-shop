{% macro generate_schema_name(custom_schema_name, node) -%}
    {# only create custom schemas in production #}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none or target.name != 'production' -%}

        {{ default_schema }}

    {%- else -%}

        {{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}