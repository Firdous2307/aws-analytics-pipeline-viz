##  :bar_chart: AWS QuickSight :rocket:


### Introduction :star:

Amazon QuickSight stands as a powerful business intelligence (BI) and data visualization tool within Amazon Web Services (AWS). It helps users easily create interactive dashboards and reports, allowing them to make informed decisions based on data.

### Key Features :hammer_and_wrench:

- **Easy Data Visualization:** Create compelling visuals from diverse data sources without extensive technical expertise.
- **Connectivity:** Seamlessly link to various sources including AWS services (e.g., Amazon S3, RDS, Redshift) and external platforms (e.g., Salesforce, Snowflake).
- **Ad Hoc Analysis:** Perform spontaneous data exploration and uncover insights through interactive dashboards.
- **Scalability:** Automatically scales with user demand and integrates seamlessly with other AWS services.

### Fundamental Concepts :books:

- **Datasets:** QuickSight utilizes datasets—collections of tables or queries imported or linked to the service.
- **Visualizations:** Create diverse visual representations like graphs, charts, maps, and tables.
- **Dashboards:** Combine visualizations into comprehensive dashboards for holistic data insights.

### Getting Started with QuickSight :rocket:

#### Data Preparation :bar_chart:
1. Connect QuickSight to your data sources such as AWS data stores or external platforms.
2. Define datasets by importing data or connecting to existing datasets.

#### Creating Visualizations :chart_with_upwards_trend:
1. Utilize QuickSight's interface to craft visualizations by choosing appropriate chart types and data fields.
2. Customize visuals by applying filters, adding calculations, and tweaking settings.

#### Building Dashboards :bar_chart:
1. Merge multiple visualizations onto a dashboard canvas.
2. Arrange and format visuals for informative and interactive dashboards.

#### Sharing and Collaboration :handshake:
1. Share dashboards and reports with other QuickSight users or stakeholders.
2. Control access and permissions for shared resources.

### Resources :open_book:

#### Official Documentation :books:
- [Amazon QuickSight Documentation](https://docs.aws.amazon.com/quicksight/index.html): Detailed guides, tutorials, and references for QuickSight usage.


## Creating your QuickSight Account

- Navigate to Amazon QuickSight and Choose a region for QuickSight. Select a plan(Enterprise or Enterprise +).
- Provide account details and email address for this service, alos a default IAM Role will be created for AWS Quicksight
- Configure data sources and permissions.

Also, you get a 30 day free trial when using Quicksight but make sure to delete your account if you are not using the service anymore.

![Screenshot (838)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/b3047b68-dfb3-4221-b78b-ea1678ee6516?s=400)

![sa](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/a27b7914-c8c9-4565-92ea-f2e271557724?s=400)


## SPICE AND DIRECT QUERY

1. SPICE (Super-fast, Parallel, In-memory Calculation Engine):

In-memory data engine for faster query and visualization. Data is cached for faster performance but may not reflect real-time changes.

2. Direct Query:

Connects directly to the data source without caching and provides real-time access but might have slower performance for large datasets.

## DataSets
Datasets in Amazon QuickSight are the backbone of data analysis, representing connected data sources.Through datasets, QuickSight users perform data preparation, transformation, and define metadata that influences visualizations.

## Data Source
A data source in Athena refers to the location where data is stored and queried. It could be a table in Amazon S3, a table in an AWS Glue Data Catalog, or a federated query source. For my case, it is a Glue Data Catalog.

So, I created my Dataset and created a DataSource from AWS Athena

![Screenshot (828)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/4d953a8f-aba8-4d18-a530-ec81e57ecee0)

![Screenshot (829)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/debeb525-8f16-4495-a6b8-d82ce7171116)

I choose the exisiting data in Athena for the visualisation in Quicksight and used `SPICE` to visualize.

![Screenshot (830)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/f1b66eb3-6402-4b7c-8e53-4ff72a305ad3)

![Screenshot (831)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/1dc46dd5-e721-45b1-b151-f1f26a8d6fbe)


Now, it's time to visualize my data. To start, I'm interested in exploring the data related to the `about_product` field.

![Screenshot (832)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/9c7c6aa0-7e3a-4d50-802f-0fa211e4684b)


You have the flexibility to modify the visuals or personalize the sheet by giving it a name of your choice.


I conducted a comparison between these fields;
- `about_product` and `category`
-  `user_name` and `rating`

![Screenshot (833)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/3cf8d3f9-a98e-4d97-a636-137233618240)


![Screenshot (836)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/df313bdf-4d88-467b-a921-b22a0e337358)


![Screenshot (837)](https://github.com/Firdous2307/aws-analytics-pipeline-viz/assets/124298708/259cd889-2c83-40dc-b253-8ec86b51bacf)
