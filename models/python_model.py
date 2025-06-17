def model(dbt, session):
    dbt.config(materialized="table")
    df = session.read_ref('stg_products')
    return df