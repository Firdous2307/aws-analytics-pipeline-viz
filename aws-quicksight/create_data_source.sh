aws quicksight create-data-source \
    --aws-account-id "$ACCOUNT_ID" \
    --name "MyS3DataSource" \
    --data-source-id "S3DataSource-2024" \
    --type S3 \
    --data-source-parameters '{
        "S3Parameters": {
            "ManifestFileLocation": {
                "Bucket": "firdous-data-analytics-bucket",
                "Key": "manifest.json"
            }
        }
    }' \
    --region us-east-2
