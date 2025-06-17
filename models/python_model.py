def model(dbt, session):
    dbt.config(
        materialized="table"
    )
    df = session.sql(f"SELECT * FROM {ref('aggregates')}").to_pandas()
    return df