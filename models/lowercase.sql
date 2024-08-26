select * from {{ source('wayfare_unmanaged', 'AGGREGATES') }}
