# Azure DataFactory
 Like I said, Azure Data Factory is used for orchestrating and automating the ETL. We can use it and debug on our go.

 There something you should know is how the service in Azure connect to each other, we have Integration Runtime (IR) which is a crucial component that allows you to move data from various source systems to different destination systems. It's essentially a compute infrastructure that provides data integration capabilities across Azure data services, on-premises, and other cloud systems.
Integration Runtime comes in three different types:
1.	Azure Integration Runtime (Azure IR): This is used to connect to Azure services such as Azure SQL Database, Azure Blob Storage, and more. It is auto-managed and maintained by Microsoft.
2.	Self-hosted Integration Runtime (Self-hosted IR): This type of IR is used when you need to connect to on-premises data sources or private network resources. You install and configure it within your own infrastructure. It allows secure communication between your on-premises systems and Azure Data Factory.
3.	Azure-SSIS Integration Runtime (Azure-SSIS IR): This IR is designed for running SQL Server Integration Services (SSIS) packages in Azure. It allows you to migrate, run, and manage your existing SSIS workloads in the Azure cloud.
The choice of Integration Runtime depends on your data integration needs:
•	Use Azure IR when dealing with data sources and destinations that are in the Azure cloud.
•	Use Self-hosted IR when you need to access on-premises data or private network resources.
•	Use Azure-SSIS IR when you have existing SSIS packages that need to be moved to or run in Azure.
You can configure and manage Integration Runtimes in Azure Data Factory to define where your data should be moved and how it should be transformed. It's an essential component for building data pipelines in Azure Data Factory, enabling you to perform tasks like data copying, transformation, and data movement efficiently.



### Table of contents

* [Overview](#overview)
  * [Integration Runtime](#integration-runtime)
  * [Price for IR](#price-for-ir)
* [Data Pipeline](#data-pipeline)
  * [Look up table name](#look-up)
  * [Copy each table to Bronze layer](#copy-to-bronze)
  * [Transfrom from Bronze to Silver layer](#transform-1)
  * [Transfrom from Silver to Gold layer](#transform-2)
* [Demo](#demo)
* [Contact](#contact)

## Overview
### Integration Runtime
  After you launch the Azure DataFactory, move to the manage tab, and there you will see the AutoResolveIntegrationRuntime (The first one) which I mention above is how Azure service connect to each other in general.
![](./image/auto-resolve-integration.png)

Create new Integration Runtime which we will need to connect to our on-prem SQL Server database.
New->Azure, Self-hosted -> Self-hosted -> Type the name and create. After that you will have something similar to this.
![Alt text](image/integration-runtime.png)

I really recommend to choose the Option 1, then you click install and wait for it, it will automatically connect your local pc to the Cloud enviroment. Kinda amazing right?. Mine connect through VPN so it have a little bit of limited bandwidth but It's not the matter let's go ahead!
![Alt text](image/connected-IR.png)

### Price for IR
There something that you should consider when we move on is the cost of the Self-hosted Integration Runtime which will be created to go on in this project, the details is down below:

![](./image/self-hosted-pricing.png)

## Data pipeline
Our pipeline gonna look like this, and let's go through each one.

![](./image/ingestion.png)

### Look up table name
  Choose the activities tab on your left side and look for 'Look up' activity, drag and drop to the pipeline, then click to that activity in the setting tab -> Source dataset -> create new source -> find SQL Server and choose it.

![](image/sql-server-on-prem.png)

Then create new Linked Service with the configuration below:
  Server name: I create one default SQL Server that's why it's name my computer.
  Database name: AdventureWorksLT2017
  User name and password: We have created one in our On-prem database, and create Key Vault to store that (You can also enter manually, don't be so worried about that) -> Test connection to check everything alright.

![Alt text](image/config-connect-sql-on-prem.png)

If you use Key Vault to store your secret, there would be some permission you need to set if you encounter this. You can read about it here;

 [KEY VAULT ROLE]( https://stackoverflow.com/questions/69971341/unable-to-create-secrets-in-azure-key-vault-if-using-azure-role-based-access-con)

![Alt text](image/key-vault-permission-linked-service.png)

After that in the Setting of Look up activity set the query that i have create in the folder "script/getschema.sql"

### Copy each table to Bronze layer
Create a Foreach activity, then double click into that, in here drag and drop Copy activity, the result of the Look up activity before give us a list of table in the database. So what we do here is from each table copy the data and put it to the bronze layer.

Take the output of Lookup acitivity.
![Alt text](image/output-lookup.png)
  
Copy activity in Foreach, we need to have table from the source and some where in the sink.
In the source we extract the data from table name.
![Alt text](image/copy-source.png)
And then store it in the sink.
![Alt text](image/copy-sink.png)

### Transfrom from Bronze to Silver layer
  Now move to the next part, which is using Azure Databrick to transform the data, you have to connect to Azure Databrick somehow right, create two notebooks then create new Databricks Linked Service, and enter your credentials:
  You need to have Access token of Azure Databrick to connect to it, click your mail on the right of your screen->User Setting->Developer->Generate new access token
![Alt text](image/access-token.png)
  Now you can connect to your databrick and run some notebooks:
  ![Alt text](image/databrick-connect.png)


### Transfrom from Silver to Gold layer
    
## Demo
- Click the link to the Demo:  
  [Link](https://www.youtube.com/watch?v=xLFjE2WJaoM)

## Contact
Please feel free to contact me if you have any questions.
<a href="https://ducanh0285@gmail.com" target="blank"><img align="center" src="https://img.icons8.com/color/48/000000/gmail--v2.png" alt="ducanh0285@gmail.com" height="30" width="40" /></a><a href="https://www.facebook.com/ducanh.pp" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="1" height="30" width="40" /></a><a href="https://twitter.com/Ducann02Nguyen" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="1" height="30" width="40" /></a><a href="https://www.linkedin.com/in/ducanhnt/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="1" height="30" width="40" /></a>