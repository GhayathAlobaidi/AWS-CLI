# Bash commands used in this repository

# Ensure key is publicly viewable
chmod 400 week3lab3.pem

# SSH into EC2
ssh -i "week3lab3.pem" ec2-user@ec2-52-2-88-211.compute-1.amazonaws.com

# Check Python Version
python --version

# Check AWS CLI version
aws --version

# Setup AWS Configure
aws configure

# Call on AWS CLI help menu
aws help

# Call on AWS s3 CLI help menu
aws s3 help

# List S3 buckets
aws s3 ls
aws s3api list-buckets
