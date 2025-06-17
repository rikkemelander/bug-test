def model(dbt, session):
    dbt.config(materialized="table")
    df = session.read_source('sync', 'PRODUCTS')
    return df