# my-terraform
Terraform learning repo - AWS infrastructure

## First
Create an AWS account & crate in IAM access (credentials) for terraform project. 
Save the credentials in `~/.aws/credentials` as [terraform] & set up region in `~/.aws/config` (there is a different format of naming, like [profile terraform]
(https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html)

## Second
Create a certificate for ssh at the AWS tab: EC2 > Key Pairs. This will be used to login into a created ec2. Store the created private key.pem. The public key is deployed on ec2. You will refere the pair of keys by the name in the AWS tab.

Find the public AMI id to be created as ec2 instance. 

## That's it
terraform plan
terraform apply
terraform destroy

terraform console

