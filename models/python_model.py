def model(dbt, session):
    dbt.config(
        materialized="table"
    )
    df = session.sql(f"SELECT * FROM { source('sync', 'PRODUCTS') }").to_pandas()
    return df