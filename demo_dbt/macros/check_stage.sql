{% macro check_stage() %}
    {% set query %}
        LIST @music_external_stage;
    {% endset %}
    
    {% set results = run_query(query) %}
    
    {% do results.print_table() %}
{% endmacro %}