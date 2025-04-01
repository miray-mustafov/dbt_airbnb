select 
    r.listing_id,
    r.reviewer_name,
    r.review_date,
    l.created_at,
from {{ ref("fct_reviews") }} as r
JOIN {{ ref("dim_listings_cleansed") }} as l
USING (listing_id)
where review_date < created_at
limit 10