# Create Glue Crawler
aws glue create-crawler \
    --name "MyCrawler" \
    --role "arn:aws:iam::$ACCOUNT_ID:role/service-role/AWSGlueServiceRole-Demo" \
    --database-name "my-demo-database" \
    --description "Crawler for my dataset" \
    --targets "S3Targets=[{Path='firdous-data-analytics-bucket/'}]"

# Sleep for 15 seconds (choose your appropriate duration)
echo "Waiting for 15 seconds before starting the crawler..."
sleep 15 

# Start the Glue Crawler
aws glue start-crawler --name MyCrawler