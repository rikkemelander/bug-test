select
    PRODUCTSUBCATEGORIES.PRODUCTCATEGORYKEY as PRODUCTCATEGORYKEY,
    PRODUCTSUBCATEGORIES.PRODUCTSUBCATEGORYKEY as PRODUCTSUBCATEGORYKEY,
    PRODUCTSUBCATEGORIES.SUBCATEGORYNAME as SUBCATEGORYNAME,
    PRODUCTSUBCATEGORIES._WAYFARE_CREATED_AT as _WAYFARE_CREATED_AT
from
    {{ source('sync', 'PRODUCTSUBCATEGORIES') }}
        as PRODUCTSUBCATEGORIES
