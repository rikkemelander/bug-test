def model(dbt, session):
    dbt.config(
        materialized="table"
    )
    df = session.sql("SELECT * FROM {{ ref('AGGREGATES') }}").to_pandas()
    return df