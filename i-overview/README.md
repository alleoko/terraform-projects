Overview 

Create IAM Group and User

IAM Group: terraform-course
permissions: AmazonEC2FullAccess
permissions: AmazonS3FullAccess
permissions: AmazonDynamoDBFullAccess
permissions: AmazonRDSFullAccess
permissions: IAMFullAccess
permissions: AmazonRoute53FullAccess

IAM User: terraform-user
group: terraform-course

Create Access Key for User
Goto IAM > Users > terraform-user > Security credentials

Input the credentials.

cd to the directory where you want to create your Terraform configuration files. 

Setup

Install Terraform
Official installation instructions from HashiCorp: https://learn.hashicorp.com/tutorials/terraform/install-cli

AWS Account Setup
AWS Terraform provider documentation: https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication

create non-root AWS user
Add the necessary IAM roles (e.g. AmazonEC2FullAccess)
Save Access key + secret key (or use AWS CLI aws configure -- https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
Hello World
./main.tf contains minimal configuration to provision an EC2 instance.

aws configure
terraform init
terraform plan
terraform apply