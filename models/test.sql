select hej.total_cost
from {{ ref('AGGREGATES') }} as hej
