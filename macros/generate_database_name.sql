{% macro generate_database_name(custom_database_name=none, node=none) -%}
    {# only create custom catalog in production #}

    {%- set default_database = target.database -%}
    {%- if custom_database_name is none or target.name != 'production'-%}

        {{ default_database }}

    {%- else -%}

        {{ custom_database_name | trim }}

    {%- endif -%}

{%- endmacro %}
