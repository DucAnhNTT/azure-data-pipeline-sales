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
* [Demo](#demo)
* [Contact](#contact)

## Overview
  After you launch the Azure DataFactory, move to the manage tab, and there you will see the AutoResolveIntegrationRuntime (The first one) which I mention above is how Azure service connect to each other in general.

![](./image/auto-resolve-integration.png)

There something that you should consider when we move on is the cost of the Self-hosted Integration Runtime which will be created next down below:

![](./image/self-hosted-pricing.png)

It's always a best pratice to store your credential in some place safe and secure, in Azure we have Key Vault to sovle that problem.

Create your Key Vault and choose the Resource Group we have created for this project (If not you can create one from here)

![](./image/key-vault-init.png)


## Contact
Please feel free to contact me if you have any questions.
<a href="https://ducanh0285@gmail.com" target="blank"><img align="center" src="https://img.icons8.com/color/48/000000/gmail--v2.png" alt="ducanh0285@gmail.com" height="30" width="40" /></a><a href="https://www.facebook.com/ducanh.pp" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="1" height="30" width="40" /></a><a href="https://twitter.com/Ducann02Nguyen" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="1" height="30" width="40" /></a><a href="https://www.linkedin.com/in/ducanhnt/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="1" height="30" width="40" /></a>