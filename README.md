# Terraform Import Project

## Project Overview

This project demonstrates how I brought an existing AWS EC2
instance under Terraform management when the original Terraform
state was unavailable.

## Problem

An EC2 instance already existed in AWS, but Terraform did not
have a state record for the resource.

## Solution

I recreated the Terraform configuration and imported the
existing EC2 instance using Terraform import.

## Workflow

1. Reviewed the existing EC2 configuration
2. Created Terraform configuration
3. Initialized Terraform
4. Imported the existing EC2 instance
5. Ran terraform plan
6. Identified configuration differences
7. Updated the Terraform configuration
8. Verified that Terraform matched the AWS environment

## Technologies

- AWS EC2
- Terraform
- Git
- GitHub

## Key Commands

terraform init
terraform import aws_instance.web <instance-id>
terraform state list
terraform state show aws_instance.web
terraform plan