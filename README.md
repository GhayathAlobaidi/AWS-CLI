# AWS-CLI  <img src="https://user-images.githubusercontent.com/37382927/110361629-24708100-7ff5-11eb-8214-b92c2696f2eb.png" width="60" height="50"> 

AWS CLI (Command Line Interface) "is a unified tool to manage your AWS services. With just one tool to download and configure, you can control multiple AWS services from the command line and automate them through scripts" (AWS). Users are mostly familiar with the AWS Management Console to access and manage the various AWS services.  However, with the help of AWS command line interface, users can access and manage those same services through Secure Shell.  This respository shows the steps to configure AWS CLI on an Amazon Linux 2 EC2 instance and be able to execute commands such as listing the user's S3 buckets.  The steps can be applied using other Amazon Machine Images (AMIs) such as Windows, macOS and Redhat. 

Note:
- Please remember to always secure and never share your EC2's private key and the user's credentials.  
- In this example, all public IP addresses were temporarly allowed into the EC2 on port 22 to use the SSH protocol for test and learning purposes only.  Please make sure to secure access to your EC2 by setting up the appropriate firewall rules. 
- AWS charges users based on the amount of compute, storage and data transfer out (not in). This example uses the EC2 instance (t2.micro) family that comes with an attached 8gb SSD EBS volume. Both are covered under the AWS 1-year free tier model.  Every user's setup is different.  Thus depending on your personal AWS setup, please remember to disable or terminate any running EC instantces/EBS volumes as it can incur charges on your account. 

### 1.	Launch Amazon Linux 2 AMI

<img width="1324" alt="1" src="https://user-images.githubusercontent.com/37382927/110220582-6a093e80-7e7b-11eb-80cd-32b5424e9e22.png">

### 2.	Setup SSH firewall rule (allow all IP addresses for test purposes only)

<img width="1312" alt="2" src="https://user-images.githubusercontent.com/37382927/110192809-527f7680-7de5-11eb-8af4-8baca6d212cb.png">

### 3.	Create & download private key pair to securely SSH into EC2 instance

<img width="1312" alt="3" src="https://user-images.githubusercontent.com/37382927/110192810-53180d00-7de5-11eb-8c9d-a7a704411002.png">

### 4.	Create an S3 bucket and block all public access

<img width="1273" alt="4" src="https://user-images.githubusercontent.com/37382927/110192811-53b0a380-7de5-11eb-8328-0a29f8e84498.png">

### 5.	Create new IAM user with Programmatic access and Management Console access

<img width="983" alt="5" src="https://user-images.githubusercontent.com/37382927/110381201-fc414c00-800d-11eb-84ec-bb7b23a42fdb.png">

### 6.	 Attach Amazon S3 Full Access policy to the newly created user

<img width="976" alt="6" src="https://user-images.githubusercontent.com/37382927/110381112-e469c800-800d-11eb-9678-5e03df48c851.png">

### 7.	Review IAM user details

<img width="976" alt="7" src="https://user-images.githubusercontent.com/37382927/110381157-f481a780-800d-11eb-9bc8-f2e9105b354b.png">

### 8.	Download newly created user’s credentials for future CLI confurations

<img width="986" alt="8" src="https://user-images.githubusercontent.com/37382927/110192839-793dad00-7de5-11eb-829c-7fb10f30eaa7.png">

### 9.	SSH Into EC2 with choice of terminal application (using macOS Terminal -> bash in this example)

<img width="1198" alt="9" src="https://user-images.githubusercontent.com/37382927/110192840-79d64380-7de5-11eb-8c1e-77aa1e0c0dc3.png">

### 10.	Check Python and AWS CLI version installed on the instance

<img width="853" alt="11" src="https://user-images.githubusercontent.com/37382927/110192851-865a9c00-7de5-11eb-814e-507f3e3b558c.png">

### 11.	Open the downloaded .csv file which holds the newly created user credentials 

<img width="915" alt="12" src="https://user-images.githubusercontent.com/37382927/110381253-0ebb8580-800e-11eb-81af-bb8be6b913c1.png">

### 12.	Setup AWS Configure using User’s CLI Credentials (Access Key ID & Secret Access Key)

<img width="851" alt="13" src="https://user-images.githubusercontent.com/37382927/110192860-92def480-7de5-11eb-9f2d-f0417d646abc.png">

### 13.	Use ‘aws help’ command to learn more about AWS CLI commands

<img width="1102" alt="14" src="https://user-images.githubusercontent.com/37382927/110192861-92def480-7de5-11eb-9092-f92b4c0cc746.png">

<img width="1097" alt="15" src="https://user-images.githubusercontent.com/37382927/110192862-93778b00-7de5-11eb-828d-f5814e9c5a68.png">

### 14.	 Use ‘aws s3 help’ command to learn specifically about AWS S3 CLI commands

<img width="1103" alt="16" src="https://user-images.githubusercontent.com/37382927/110192863-93778b00-7de5-11eb-89ed-ae3c68071b5c.png">

<img width="1099" alt="17" src="https://user-images.githubusercontent.com/37382927/110192864-94102180-7de5-11eb-9472-404555c551aa.png">

### 15.	Type command to list S3 buckets 
-	Note: It will list the newly created bucket in step 4

<img width="1103" alt="18" src="https://user-images.githubusercontent.com/37382927/110192865-94102180-7de5-11eb-9e1f-072a0c6fb11a.png">

### 16.	If we remove the S3 Full Access policy that we added to the user in Step 6 and try to the S3 commands again, we notice the following error:

<img width="1101" alt="19" src="https://user-images.githubusercontent.com/37382927/110192866-94a8b800-7de5-11eb-8971-0ed0ae3fae77.png">

