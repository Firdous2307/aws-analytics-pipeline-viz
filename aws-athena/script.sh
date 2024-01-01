# Initiating AWS Athena query execution to retrieve all data from a specific table
    aws athena start-query-execution \
    --query-string "SELECT * FROM \"my-demo-database\".\"firdous_data_analytics_bucket\" LIMIT 10" \
    --result-config "OutputLocation=s3://firdous-data-analytics-bucket/" \
    --query-execution-context Database="my-demo-database",Catalog="AwsDataCatalog"

    
# Initiating AWS Athena query execution using an SQL file
aws athena start-query-execution \
    --query-string "file://sample_query.sql" \
    --result-configuration "OutputLocation=s3://firdous-data-analytics-bucket/"
