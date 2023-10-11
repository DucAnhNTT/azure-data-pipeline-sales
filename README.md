# Azure end-to-end Data Pipeline from On-prem to Report 

This project showcases the creation and execution of a comprehensive data pipeline, utilizing Azure services for data manipulation, storage, and visualization within an analytics framework.

### Table of contents

* [Architecture diagram](#architecture-diagram)
* [Overview](#overview)
* [How it works](#how-it-works)
* [Prerequisites](#prerequisites)
* [Quick Start](#quick-start)
    * [Azure Integration Runtime](#azure-integration-runtime)
    * [Azure Data Lake Storage Gen2](#azure-datalake)
    * [Azure Databricks](#azzure-databrick)
    * [Azure Data Factory](#azure-data-factory)
    * [Azure Synapse Analytics](#azure-synapse-analytics)
    * [Power BI](#power-bi)
* [Configure Environment Variables](#configure-environment-variables)
* [References](#references)
* [Demo](#demo)
* [Contact](#contact)

## Architecture diagram

![](./image/architecture.jpg)

## Overview
  ### Database Schema
  ![](./dataForProject/image/dvdrental-schema.png)
  ### Dimensional Modeling with Sales
  ![](./dataForProject/image/dvdrentalDW-schema.png) 
  ### Building report
  ![](./dataForProject/image/reportDVD.png) 

## How it works
* Data Sources:

    OLTP PostgreSQL Database: The primary source of transactional data.

    Flat Files: Additional data sources in various formats.
* Data Ingestion:

    Apache Hadoop HDFS: Serves as the data lake for ingesting raw data.

* Data Transformation:

    Apache Hive: The data warehouse for structured data storage and transformation.

    Apache Spark: Powers ETL (Extract, Transform, Load) processes for data processing.
* Data Modeling:

    Hive QL: Used for defining and applying data models on top of the structured data.
* Data Visualization:

    Apache Superset: Provides a rich and interactive interface for data exploration and visualization.
* Orchestration and Workflow:

    Apache Airflow: Manages and schedules data pipeline workflows.
* Docker: 

    Containerizes and isolates components for easy deployment and scalability.




## Quick Start


  
## Prerequisites
What you need to run the project:

Azure Subscription - You will need an Azure subscription to create and manage the resources used in this project.
Azure Data Factory - Azure Data Factory is used for orchestrating and automating the data pipeline.
Azure Databricks - Azure Databricks is used for data transformation and processing.
Azure Synapse Analytics - Azure Synapse Analytics is used for data warehousing and analytics.
Power BI - Power BI is used for data visualization and reporting.
Quick Start
Azure Integration Runtime:
Azure Integration Runtime is used to connect your on-premises SQL Server to Azure services. You will need to install and configure the Azure Integration Runtime on your on-premises SQL Server.

Azure Data Lake Storage Gen2:
Azure Data Lake Storage Gen2 is used as the data lake for this project. You will need to create a Data Lake Storage Gen2 account in your Azure subscription.

Azure Databricks:
Azure Databricks is used for data transformation and processing. You will need to create a Databricks workspace in your Azure subscription.

Azure Data Factory:
Azure Data Factory is used for orchestrating and automating the data pipeline. You will need to create a Data Factory in your Azure subscription.

Azure Synapse Analytics:
Azure Synapse Analytics is used for data warehousing and analytics. You will need to create a Synapse workspace in your Azure subscription.

Power BI:
Power BI is used for data visualization and reporting. You will need to sign up for Power BI and connect it to your Azure Synapse Analytics.

Configure Environment Variables
You will need to configure environment variables for your Azure services. This includes connection strings, access keys, and other configuration settings.

## Quick Start 

## Configure Environment Variables


## References
Inspired by following codes, articles and videos:

* [Docker's document](https://www.linkedin.com/pulse/dockerizing-hadoop-hive-spark-sqoop-job-thomas/)
* [Configuration containers](https://www.linkedin.com/pulse/dockerizing-hadoop-hive-spark-sqoop-job-thomas/)
* [Furthermore of docker](https://docs.docker.com/desktop/networking/)


## Contact
Please feel free to contact me if you have any questions.
<a href="https://ducanh0285@gmail.com" target="blank"><img align="center" src="https://img.icons8.com/color/48/000000/gmail--v2.png" alt="ducanh0285@gmail.com" height="30" width="40" /></a><a href="https://www.facebook.com/ducanh.pp" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="1" height="30" width="40" /></a><a href="https://twitter.com/Ducann02Nguyen" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="1" height="30" width="40" /></a><a href="https://www.linkedin.com/in/ducanhnt/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="1" height="30" width="40" /></a>