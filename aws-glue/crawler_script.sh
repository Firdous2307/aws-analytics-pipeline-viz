# Create Glue Crawler
aws glue create-crawler \
    --name "MyCrawler" \
    --role "arn:aws:iam::$ACCOUNT_ID:role/service-role/AWSGlueServiceRole-Demo" \
    --database-name "my-demo-database" \
    --description "Crawler for my dataset" \
    --targets "S3Targets=[{Path='firdous-data-analytics-bucket/'}]"

# Sleep for 1-2 minutes (choose the appropriate duration)
echo "Waiting for 1-2 minutes before starting the crawler..."
sleep 120  # 120 seconds = 2 minutes

# Start the Glue Crawler
aws glue start-crawler --name MyCrawler