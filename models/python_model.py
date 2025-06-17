def model(dbt, session):
    dbt.config(materialized="table")
    df = session.table("INTERNAL_DEVELOPMENT.RMEL.PRODUCTCATEGORIES")
    return df