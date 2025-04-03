{% macro learn_variables(args) %}

    {% set my_name_jinja='Miray M' %}
    {{ log("Hello " ~ my_name_jinja, info=True ) }}

    {{ log("Hello dbt user " ~ var('user_name', 'my_Default_username') , info=True ) }}

{% endmacro %}