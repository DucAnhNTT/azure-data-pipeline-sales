# Azure end-to-end Data Pipeline from On-prem to Report 

This project showcases the creation and execution of a comprehensive data pipeline, utilizing Azure services for data manipulation, storage, and visualization within an analytics framework.


A good use case of this project is migrating the on-prem database to Cloud. I will guide you step by step to complete this project in each section. Let's go!

### Table of contents

* [Architecture diagram](#architecture-diagram)
* [Overview](#overview)
  * [Resource Group](#resource-group)
  * [Database Schema](#database-schema)
  * [Building Report](#building-Report)
  * [Data Lake Architecture](#datalake-architecture)
* [How it works](#how-it-works)
* [Prerequisites](#prerequisites)
* [Demo](#demo)
* [Contact](#contact)

## Architecture diagram

![](./image/architecture.jpg)

## Overview

### Resource group
![](./image/resource-group.png)

### Database Schema
![](./image/database-schema.jpg)

### Building report
![](./image/visualize-power-bi.png)

### Data Lake Architecture
The data lake architecture consists of three layers:

Bronze Layer:
This is the raw data layer where data is ingested from various source systems. The data in this layer is an exact copy of the source data.

Silver Layer:
This is the cleaned and processed data layer. Data from the Bronze layer is transformed and loaded into this layer. Simple transformations like changing column names and types for compatibility in the cloud are performed in this layer.

Gold Layer:
This is the final, cleanest form of data which is ready for consumption by end users or downstream systems. The data in this layer is highly aggregated and optimized for reporting and analytics.

## How it works
### Data Sources:

SQL Server On-Prem: The primary source of transactional data.

### Data Ingestion:

Azure Integration Runtime: Connects on-premises SQL Server to Azure services.

Azure Data Lake Storage Gen2: Serves as the data lake for ingesting raw data.

### Data Transformation:

Azure Databricks: Powers ETL (Extract, Transform, Load) processes for data processing.

### Data Visualization:

Power BI: Provides a rich and interactive interface for data exploration and visualization.

### Orchestration and Workflow:

Azure Data Factory: Manages and schedules data pipeline workflows.

Azure Synapse Analytics: Provides a unified experience to ingest, prepare, manage, and serve data for immediate business intelligence and machine learning needs.


  
## Prerequisites
What you need to run the project:

- I have play around a lot in this project and the cost is approximate about $15.

![](./image/cost.png)
 [Key Vault Role](https://stackoverflow.com/questions/69971341/unable-to-create-secrets-in-azure-key-vault-if-using-azure-role-based-access-con)

[Access role to storage account](https://learn.microsoft.com/en-us/answers/questions/779065/error-this-request-is-not-authorized-to-perform-th)

[Self-hosted pricing](https://azure.microsoft.com/en-us/pricing/details/data-factory/data-pipeline/)

[Mount Azure Databrick and ADLS Gen 2](https://techcommunity.microsoft.com/t5/azure-paas-blog/mount-adls-gen2-or-blob-storage-in-azure-databricks/ba-p/3802926)



## Demo
- Click the link to the Demo:  
  [Link](https://www.youtube.com/playlist?list=PLId1IInL1tur3w-5b9-SY1AvyH8lZw7IA)

## Contact
Please feel free to contact me if you have any questions.
<a href="https://ducanh0285@gmail.com" target="blank"><img align="center" src="https://img.icons8.com/color/48/000000/gmail--v2.png" alt="ducanh0285@gmail.com" height="30" width="40" /></a><a href="https://www.facebook.com/ducanh.pp" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="1" height="30" width="40" /></a><a href="https://twitter.com/Ducann02Nguyen" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="1" height="30" width="40" /></a><a href="https://www.linkedin.com/in/ducanhnt/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="1" height="30" width="40" /></a>