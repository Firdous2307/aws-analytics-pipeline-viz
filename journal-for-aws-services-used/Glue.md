## AWS Glue 💡

AWS Glue is an Amazon service that helps you organize and process your data easily. It sorts and prepares your data for analysis and other tasks without you having to manage complex setups. It is also a serverless service.

### Key Features:

1. **Data Catalog** 📚:
   - Maintains a centralized index of data, simplifying the process of finding and understanding datasets without searching through multiple locations.

2. **ETL Simplification** 🔄:
   - Facilitates Extracting, Transforming, and Loading (ETL) data from diverse sources into formats suitable for analysis or storage.

3. **Crawlers** 🕷️:
   - Utilizes crawlers to automatically discover schema and metadata of data sources. These crawlers scan data stores, infer schemas, and populate the Glue Data Catalog with metadata.


[For more information on AWS Glue](https://aws.amazon.com/glue/)


After creating an S3 Bucket, and storing my dataset in the bucket, I intend to;

- [x] Create a new crawler and specify the data stored in my S3 bucket.
- [x] Create a target database
- [x] Create an IAM Role for the service which will have permissions to access my Crawler targets and my S3 bucket. Although I do not intend to grant it full S3 Access. 
- [x] Run the crawler to create a data catalog that organizes metadata from the dataset.



Variables such as `my_profile`, `endpoint`, and `database_name` store values for `--profile`, `--endpoint`, and the database name, respectively.

- I had to create a new profile,Why?
Having multiple AWS profiles allows you to manage different access permissions, work in different AWS regions, It is like having different outfits for different activities

```aws
aws configure --profile my_new_profile
```

I have to create an IAM Role for AWS Glue and attach polcies to access my S3 Bucket.

So I already created my role via the Console and attached the Glue Service, now to attach the plocy for my S3 Bucket.


## Create Policy first
aws iam create-policy \
--policy-name <POLICY_NAME> \
--policy-document file://aws/policies/s3-access-policy.json

## Attach the Policy
aws iam attach-role-policy \
--role-name <ROLE_NAME> \
--policy-arn <POLICY_ARN>


