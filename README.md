# aws-ansible-cicd

Terraform AWS Infrastructure with Ansible Deployment for CICD Pipeline The project below deploys infrastructure in Amazon Web Services (AWS), automates the application deployment via Ansible, and set up a CI/CD pipeline for a web application.

Stack Requirements Ansible - Configuration Automation Jenkins - CI/CD Orchestration Terraform - Infrastructure Deployment Rocketchat - ChatOps Chef Inspec - Testing / Readiness Inspection GitLab Server - Version Control Hashicorp Vault - Secrets Management

Getting Started
To begin using this template, you can clone the repository or Download git clone https://github.com/loniyi/complete-aws-cicd.git

Prerequisites
Install Terraform and Ansible on local system Have an AWS account (Some infrastructure may inquire some cost.) Set (Environment variables) for AWS or Profile Set ssh-keygen with prefered path Preferable have a domain name to work with

Installing
Install Terraform

Install Ansible

Running the AWS Infrastructure
Set SSH-KEYGEN path in Variable "key-path" in rootmain.tfvars Set all variables as required in rootmain.tfvars

From root folder run terraform init terraform apply

Running the Ansible Automation
Using the EIP Output from the terraform infrastructure output, input EIP in ssh.cfg and inventory files in ansible folder. Then from ansible folder run

$ ansible-playbook install.yml
