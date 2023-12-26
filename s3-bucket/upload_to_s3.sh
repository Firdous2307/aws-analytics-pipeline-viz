#!/bin/bash

# Load environment variables
source .env

# Get the current date in YYYY-MM-DD format
CURRENT_DATE=$(date +'%Y-%m-%d')

# Source directory
SOURCE_DIR="/workspace/AWS-Analytics-Pipeline-Viz/dataset/Amazon Sales Dataset.csv"

# Check if the S3 bucket exists, if not, create it in the specified region
if ! aws s3api head-bucket --bucket "$S3_BUCKET_NAME" 2>/dev/null; then
  echo "Bucket '$S3_BUCKET_NAME' does not exist. Creating..."
  
  # Create bucket in the specified region
  if ! aws s3api create-bucket \
  --bucket "$S3_BUCKET_NAME" \
  --region "$AWS_DEFAULT_REGION"; then
  echo "Failed to create bucket '$S3_BUCKET_NAME'. Please check your permissions or try a different name/region."
  exit 1
fi
  
  echo "Bucket '$S3_BUCKET_NAME' created successfully."
  echo "Waiting for 1-2 minutes before uploading files..."
  sleep 120  # Wait for 2 minutes (120 seconds)
fi
