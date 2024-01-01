# aws quicksight create-data-set \
#    --aws-account-id "$ACCOUNT_ID" \
#    --data-set-id myDemo-DataSet \
#    --name "My Demo Dataset" \
#    --physical-table-map '{"AthenaPhysicalTable": {"Catalog": "AwsDataCatalog", "Database": "my-demo-database", "Name": "firdous_data_analytics_bucket"}}' \
#    --data-source-arn "arn:aws:quicksight:$AWS_DEFAULT_REGION:$ACCOUNT_ID:datasource/" \
#    --import-mode DirectQuery \
#    --region us-east-2
