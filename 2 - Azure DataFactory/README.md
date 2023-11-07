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
* [Contact](#contact)

## Overview
### Integration Runtime
  After you launch the Azure DataFactory, move to the manage tab, and there you will see the AutoResolveIntegrationRuntime (The first one) which I mention above is how Azure service connect to each other in general.
![](./image/auto-resolve-integration.png)

Create new Integration Runtime which we will need to connect to our on-prem SQL Server database.
New->Azure, Self-hosted -> Self-hosted -> Type the name and create. After that you will have something similar to this
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
  Choose the activities tab on your left side and look for 'Look up' activity, drag and drop to the pipeline, then click to that activity in the setting tab
-> Source dataset -> create new source 
![](image/sql-server-on-prem.png)

  * [Copy each table to Bronze layer](#copy-to-bronze)
  * [Transfrom from Bronze to Silver layer](#transform-1)
  * [Transfrom from Silver to Gold layer](#transform-2)


## Contact
Please feel free to contact me if you have any questions.
<a href="https://ducanh0285@gmail.com" target="blank"><img align="center" src="https://img.icons8.com/color/48/000000/gmail--v2.png" alt="ducanh0285@gmail.com" height="30" width="40" /></a><a href="https://www.facebook.com/ducanh.pp" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="1" height="30" width="40" /></a><a href="https://twitter.com/Ducann02Nguyen" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="1" height="30" width="40" /></a><a href="https://www.linkedin.com/in/ducanhnt/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="1" height="30" width="40" /></a>