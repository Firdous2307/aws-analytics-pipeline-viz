#aws glue create-crawler \
#    --name "MyCrawler" \
#    --role "arn:aws:iam::$ACCOUNT_ID:role/service-role/AWSGlueServiceRole-demo" \
#    --database-name "my-demo-database" \
#    --description "Crawler for my data" \
#    --targets "S3Targets=[{Path='$PATH_TO_MY_S3_BUCKET'}]"
