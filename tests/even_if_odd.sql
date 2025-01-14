{% test warn_if_odd(model, column_name) %}

    {{ config(severity = 'warn') }}

    select *
    from {{ STG_PRODUCTS }}
    where ({{ PRODUCTCOST }} % 2) = 1

{% endtest %}
