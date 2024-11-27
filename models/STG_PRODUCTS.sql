select
    PRODUCTS.MODELNAME as MODELNAME,
    PRODUCTS.PRODUCTCOLOR as PRODUCTCOLOR,
    PRODUCTS.PRODUCTDESCRIPTION as PRODUCTDESCRIPTION,
    PRODUCTS.PRODUCTKEY as PRODUCTKEY,
    PRODUCTS.PRODUCTNAME as PRODUCTNAME,
    PRODUCTS.PRODUCTPRICE as PRODUCTPRICE,
    PRODUCTS.PRODUCTSIZE as PRODUCTSIZE,
    PRODUCTS.PRODUCTSKU as PRODUCTSKU,
    PRODUCTS.PRODUCTSTYLE as PRODUCTSTYLE,
    PRODUCTS.PRODUCTSUBCATEGORYKEY as PRODUCTSUBCATEGORYKEY,
    PRODUCTS._WAYFARE_CREATED_AT as _WAYFARE_CREATED_AT,
    PRODUCTS._WAYFARE_UPDATED_AT as _WAYFARE_UPDATED_AT,
    PRODUCTS.PRODUCTCOST + 10 as PRODUCTCOST
from {{ source('wayfare_unmanaged', 'PRODUCTS') }} as PRODUCTS
