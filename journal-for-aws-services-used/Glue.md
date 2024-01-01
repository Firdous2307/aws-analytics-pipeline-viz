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

![Screenshot (781)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/8727e395-93cd-472a-b179-0b12e8270f50)

I have to create an IAM Role for AWS Glue and attach polcies to access my S3 Bucket.

So I already created my role via the Console and attached the Glue Service, now to attach the policy for my S3 Bucket.


## Create Policy first
```
aws iam create-policy \
--policy-name <POLICY_NAME> \
--policy-document file://aws/policies/s3-access-policy.json
```
## Attach the Policy
```
aws iam attach-role-policy \
--role-name <ROLE_NAME> \
--policy-arn <POLICY_ARN>
```
<p float="left">
  <img src="https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/e1f8e7e1-c8f2-424d-93a5-397da7f4b325" width="400" />
  <img src="https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/6c84360c-e5b1-4f88-98b6-ac9278ffd486" width="400" /> 
</p>


## Databases
In AWS Glue, a database is used to store and manage metadata about your data sources. It acts as a catalog, organizing information about tables, schemas, and connections., so I went ahead to create a database named `my-demo-database`

![Screenshot (782)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/452f1c06-45e6-4583-9831-378e395dea0c)

![Screenshot (784)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/fd7ee512-9461-4685-bfce-26dd62b0ef11)


## Crawlers
AWS Glue crawlers analyze the data, determine its structure, and create table definitions that are stored in the Data Catalog. This allows for easier querying and data processing, as the metadata created by crawlers enables AWS services like Athena, Redshift Spectrum, and Glue ETL jobs to understand the data's format and structure.
I created a [crawler_script](https://github.com/Firdous2307/aws-analytics-pipeline-viz/blob/main/aws-glue/crawler_script.sh) for this purpose.

![Screenshot (795)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/7c01b361-c6d3-4d2c-84af-e1042f1934cb)

![Screenshot (800)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/e9daa5e4-08fc-4cb9-b176-c5edb026a4ae)

- When a crawler runs in AWS Glue, it generates logs that provide information about the crawling process. These logs contain details such as the start and end times of the crawl, the data sources scanned, the discovered schemas, any errors encountered during crawling, and the generated metadata.
  
![Screenshot (802)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/8fcda6f4-50bf-4f1a-885e-f200f3793c7d)


## Tables

When a crawler runs and successfully identifies the schema of your data sources (such as files in Amazon S3, tables in Amazon RDS, or data in Amazon Redshift), it creates corresponding table definitions in the AWS Glue Data Catalog.

These tables in the Glue Data Catalog contain metadata information, including column names, data types, partitions (if applicable), and other schema details inferred from the data sources by the crawler.

Once the tables are created in the Glue Data Catalog, they can be used by various AWS services or your ETL (Extract, Transform, Load) jobs within AWS Glue for data processing, analytics, or querying purposes without the need to define schema manually.
  
![Screenshot (798)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/f8ee4cdf-8da6-4058-bd9a-ad70d5fa15ea)

![Screenshot (799)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/2471c880-f0fb-4056-8a44-dd314d1621fb)




