# Initiating AWS Athena query execution to retrieve all data from a specific table
aws athena start-query-execution \
    --query-string "SELECT * FROM my-demo-database.firdous_data_analytics_bucket" \
    --result-configuration "OutputLocation=s3://firdous-data-analytics-bucket/"

# Initiating AWS Athena query execution using an SQL file
aws athena start-query-execution \
    --query-string aws-athena/athena_query.sql \
    --result-configuration OutputLocation=s3://firdous-data-analytics-bucket/
