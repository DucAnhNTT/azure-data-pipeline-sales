# Azure DataFactory


### Table of contents

* [Overview](#overview)
* [Demo](#demo)
* [Contact](#contact)

## Overview
  Open the SSMS (SQL Server Management Studio), restore database with the file in the folder "AdventureWorkDB/AdventureWorksLT2017.bak"

![](./image/restore-database.png)

Then you need to create login and set your privilege in SSMS, you can do that following the file "./script/createlogin.sql", now run the simple Select query below to check if it is set or not.

![](./image/run-script.png)

It's always a best pratice to store your credential in some place safe and secure, in Azure we have Key Vault to sovle that problem.

Create your Key Vault and choose the Resource Group we have created for this project (If not you can create one from here)

![](./image/key-vault-init.png)


## Contact
Please feel free to contact me if you have any questions.
<a href="https://ducanh0285@gmail.com" target="blank"><img align="center" src="https://img.icons8.com/color/48/000000/gmail--v2.png" alt="ducanh0285@gmail.com" height="30" width="40" /></a><a href="https://www.facebook.com/ducanh.pp" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="1" height="30" width="40" /></a><a href="https://twitter.com/Ducann02Nguyen" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="1" height="30" width="40" /></a><a href="https://www.linkedin.com/in/ducanhnt/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="1" height="30" width="40" /></a>