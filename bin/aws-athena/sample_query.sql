SELECT
    product_id,
    product_name,
    category,
    discounted_price,
    actual_price,
    discount_percentage,
    rating,
    rating_count,
    about_product,
    user_id,
    user_name,
    review_id,
    review_title,
    review_content,
    img_link,
    product_link,
    partition_0
FROM
    "my-demo-database"."firdous_data_analytics_bucket"
WHERE
    product_id = 'B07JW9H4J1'
ORDER BY
    rating DESC
LIMIT
    15;
