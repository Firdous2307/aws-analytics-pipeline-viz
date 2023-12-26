# AWS-Analytics-Pipeline-Vizualization
For this project, I would like to use AWS Services for data processing and vizualization.

## Features

- **Amazon S3:** To Upload and store datasets.
- **AWS Glue:** For Data cataloging, ETL jobs for data transformation.
- **Amazon Athena:** To Query data stored in S3 using SQL.
- **Amazon QuickSight:** To Visualize queried data through interactive dashboards.


## S3 Bucket
[The script](https://github.com/Firdous2307/aws-analytics-pipeline-viz/blob/main/s3-bucket/script) begins by loading environment variables(AWS in ths case) and obtaining the current date.
- It checks for the existence of the specified S3 bucket using aws s3api head-bucket. 
- If the bucket does not exist, it creates it with aws s3api create-bucket. 
- Afterward, it proceeds to upload the specified file to the S3 bucket.

For permissions, I used `chmod +x upload_to_s3.sh` to grant execution permissions to the script before running it.

``` env
export $S3_BUCKET_NAME="YOUR_BUCKET_NAME"
```

When I was attempting to create an S3 bucket, I came across the  error **IllegalLocationConstraintException**. This error arises due to an incompatible or unspecified location constraint provided during the bucket creation process.

The error typically happens when the specified AWS region and the provided location constraint for creating an S3 bucket do not match or are missing.

So I went further to put the Location Constraint, because when using AWS CLI,the location constraint should be set the location constraint should be set 

```sh
--create-bucket-configuration LocationConstraint="$AWS_DEFAULT_REGION"; 
```