{% macro is_product_type(column_name, type_name) %}
    coalesce({{ column_name }} = '{{ type_name }}', false)
{% endmacro %}
