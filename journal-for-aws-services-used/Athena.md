## AWS Athena ⚡️

AWS Athena is an interactive query service provided by Amazon Web Services (AWS). It enables querying and analyzing data stored in Amazon S3 using SQL (Structured Query Language) statements. It's a serverless service.

### Key features of AWS Athena include:

- **Querying Data in S3**: Athena allows you to run SQL queries directly against data stored in Amazon S3 buckets without the need to load or transform the data into a separate database.

- **Standard SQL Support**: Athena supports standard SQL, making it easy for users familiar with SQL to query and analyze data in S3 without needing to learn new query languages.

- **Integration with AWS Glue**: Athena integrates seamlessly with AWS Glue, allowing you to define and manage data catalogs that describe the metadata and schema of your S3 data.

- **Data Formats Supported**: Athena works with various data formats commonly stored in S3, such as CSV, JSON, Parquet, ORC, Avro, and more.

[Sample Query SQL File](https://github.com/Firdous2307/aws-analytics-pipeline-viz/blob/main/aws-athena/sample_query.sql)

 It's starting an AWS Athena query execution by referencing an SQL file located at `aws-athena/athena_query.sql`. The result of this query execution will be stored in the specified S3 bucket (`s3://firdous-data-analytics-bucket/`). 


[Script for AWS Athena](https://github.com/Firdous2307/aws-analytics-pipeline-viz/blob/main/aws-athena/script.sh)

 It is starting an AWS Athena query execution to retrieve all data (`SELECT *`) from a table named `firdous_data_analytics_bucket` in the `my-demo-database`. The query results will be stored in the specified S3 bucket (`s3://firdous-data-analytics-bucket/`).
