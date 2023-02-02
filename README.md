## Overview

Automate Infrastructure deployment using multi-stage Terraform pipelines to provision cloud resources safely and in a predictable way accross all environments (Development,Staging,Production).

The Infrastructure code is built into reusable modules and individual feature teams can reference them in their working Terraform projects, which can be stored alongside their application code.

## Multi-stage build pipelines

Development branch is used to deploy the development environment and release branch is used to deploy the staging and production.

There are 2 Stages: validate and apply.

### Validate job

First a task publishes artifacts to the pipeline workspace to share files between stages in the pipeline workspace.
`Terraform init` initializes a working directory containing Terraform configuration files with a backend storage account where Terraform stores its state data files.
`Terraform validate` runs a syntax check of configuration included in Terraform file.
`Terraform plan` outputs a plan and preview the actions Terraform would take to modify the infrastructure but does not change anything yet.

### Apply job

`terraform apply` proceeds with deploying the Azure Resources displayed in the plan.

### Terraform destroy

`Terraform destroy` reverses the `terraform apply`, it terminates all the resources specified in the Terraform state.
Terraform destroy can be triggered through a separate pipeline.
Pipeline can be manually kicked off, or scheduled to run at 30 days

## Initial requirements

There are some prior requirements needed to complete before deploying Terraform manifests using Azure DevOps.

### Storage account

Terraform must store state about the managed infrastructure and configuration. This state is used by Terraform to map real world resources to the configuration we want to deploy and keep track of metadata.

State files are stored remotely in an Azure Storage Account container.

### Azure service principal

As a best practice for DevOps within CI/CD pipelines a Service Principal (SPN) should be created as an identity for authentication within Azure subscription to allow deployment of the relevant Terraform code.

### Variable groups

Variable groups are used to store environment variables, secrets and other values that are needed to be controlled and made available across pipelines.

### Service connection

Service connection is needed for Key Vault Integration.

### Environment

Environments need to be pre created with the right security and checks configuration before being used in a pipeline.
