## AWS Athena ⚡️

AWS Athena is an interactive query service provided by Amazon Web Services (AWS). It enables querying and analyzing data stored in Amazon S3 using SQL (Structured Query Language) statements. It's a serverless service.

### Key features of AWS Athena include:

- **Querying Data in S3**: Athena allows you to run SQL queries directly against data stored in Amazon S3 buckets without the need to load or transform the data into a separate database.

- **Standard SQL Support**: Athena supports standard SQL, making it easy for users familiar with SQL to query and analyze data in S3 without needing to learn new query languages.

- **Integration with AWS Glue**: Athena integrates seamlessly with AWS Glue, allowing you to define and manage data catalogs that describe the metadata and schema of your S3 data.

- **Data Formats Supported**: Athena works with various data formats commonly stored in S3, such as CSV, JSON, Parquet, ORC, Avro, and more.

[Sample Query SQL File](https://github.com/Firdous2307/aws-analytics-pipeline-viz/blob/main/aws-athena/sample_query.sql)

 It's starting an AWS Athena query execution by referencing an SQL file located at `aws-athena/sample_query.sql`. The result of this query execution will be stored in the specified S3 bucket (`s3://firdous-data-analytics-bucket/`). 


[Script for AWS Athena](https://github.com/Firdous2307/aws-analytics-pipeline-viz/blob/main/aws-athena/script.sh)

 It is starting an AWS Athena query execution to retrieve all data (`SELECT *`) from a table named `firdous_data_analytics_bucket` in the `my-demo-database`. The query results will be stored in the specified S3 bucket (`s3://firdous-data-analytics-bucket/`).


##  Query Result Location
The query result location in Athena refers to the Amazon S3 location where the query results are stored after a query execution. When you run a query in Athena,it automatically saves these query results in a designated Amazon S3 bucket specified by the query result location.

For my case, I used my bucket `s3://firdous-data-analytics-bucket/`

![Screenshot (809)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/7d0c57bd-ec4c-4e9b-9a7c-0343577c86fd)


## Query Execution

Query execution refers to the process of running a query on a database or data storage system to retrieve specific information or perform operations on the data. In this [script](https://github.com/Firdous2307/aws-analytics-pipeline-viz/blob/main/aws-athena/script.sh), also i set a `LIMIT 10`. Why? It limits the result set to only show the first 10 rows.

![Screenshot (815)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/ea622f53-eb58-44b7-acf0-bcbfde8fcba1)

After running the script, I went further to check Athena in my Console and the query was successful.

![Screenshot (822)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/eda301be-80fb-4a31-a35c-5def26f47286)

The Query Result was saved in my designated S3 Bucket, I went to check for clarification and to be sure that it did save.


## Query with S3 Select
 Amazon S3 Select is a feature that allows you to retrieve a subset of data from objects (files) stored in Amazon S3 using SQL expressions. It enables you to run simple queries to filter and retrieve only the necessary data from objects without needing to download the entire file.

So, I executed an SQL query on the object stored in Amazon S3 using S3 Select.

 ![Screenshot (817)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/22fc3eac-58a6-4b5f-9147-08df96101bf8)
 
 ![Screenshot (821)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/e9543c78-8893-47b2-9951-8d5a6ee6c5db)


## S3 Select and AWS Athena

Both may return similar results, but their focus, performance, and use cases differ. The choice between them depends on the nature and complexity of your queries, as well as the specific data retrieval requirements.
Athena is a full-fledged query service capable of handling complex SQL queries and large datasets, while S3 Select is more focused on efficient data retrieval by fetching subsets of data from objects in S3.




## MY SQL FILE

To streamline my workflow, I created an SQL file to trigger an AWS Athena query execution, and it executed successfully.
It selects data related to a specific product identified by the 'product_id' ('B07JW9H4J1'), ordering the results by the 'rating' attribute in descending order. Additionally, it limits the output to 15 records.

![Screenshot (818)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/c2099fc4-06ff-46f0-8e35-ee82a04f5e65)

![Screenshot (819)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/5e571a9c-224c-494a-8c45-57852ebd5fde)

![Screenshot (820)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/ba6266b0-65df-4be6-a6a7-285e51c7a3a4)

