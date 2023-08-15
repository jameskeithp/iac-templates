# Infrastructure as Code (IaC) with Terraform - AWS EC2 Instance

This repository contains a simple example of using Terraform to provision an AWS EC2 instance.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your system.
- AWS account with appropriate credentials and permissions.

## Steps

### Step 1: Clone the Repository

Clone this repository to your local machine:

```bash
git clone <repository_url>
cd iac-terraform-ec2

Step 2: Set Up AWS Credentials

Before using Terraform with AWS, you need to configure your AWS credentials:

    Log in to the AWS Management Console.
    Go to the "IAM" (Identity and Access Management) service.
    Create a new user or use an existing one.
    Attach the "AmazonEC2FullAccess" and "AmazonVPCFullAccess" policies to the user (Note: In a production environment, it's recommended to follow the principle of least privilege and create a custom policy with only the required permissions).
    Generate an access key for the user.

Step 3: Configure Terraform

    Open the main.tf file in a text editor.
    Modify the region and ami values as needed. Make sure to use the correct AWS region and the appropriate AMI for your region.

Step 4: Initialize and Apply the Configuration

In your terminal, navigate to the repository directory and run the following commands:

terraform init   # Initialize Terraform in the current directory
terraform apply  # Apply the configuration and create the infrastructure

Terraform will ask you to confirm the changes. Type "yes" to proceed.

Step 5: Verify

Once the Terraform apply is complete, you should see the output showing the details of the created instance. You can also go to the AWS Management Console, navigate to the EC2 service, and verify that the instance has been provisioned.
Step 6: Cleanup

When you're done testing, you can destroy the created resources using Terraform:

terraform destroy  # This will destroy the infrastructure created by Terraform

Terraform will ask you to confirm the destruction. Type "yes" to proceed.

Note

    Handle your AWS credentials securely and avoid sharing them in public repositories.
    This is a basic example. You can extend and customize the Terraform configuration to provision more complex infrastructure.

    
    Replace `<repository_url>` with the actual URL of your repository. This README.md file provides clear instructions, important notes, and tips for working with 
    Terraform to create an AWS EC2 instance using infrastructure as code.

