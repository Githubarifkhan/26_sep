select
    order_id,
    Count(*) as duplicate_count
from {{ ref('Orders' )}}
group by order_id
having count(*) > 1