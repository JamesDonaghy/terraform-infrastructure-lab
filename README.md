# terraform-infrastructure-lab

A practical Terraform project demonstrating core Infrastructure as Code skills using a fully local workflow.

## Purpose

This repository shows how to:

- Write and organise Terraform configuration with variables, locals, outputs and modules
- Use the Terraform workflow (init → validate → plan → apply)
- Understand and inspect state
- Enforce formatting and validation with GitHub Actions

All resources are managed with the official hashicorp/local provider so the project requires no cloud credentials or paid services.

## Repository Structure

- main.tf – root module, provider configuration and module call
- variables.tf – input variables
- outputs.tf – root outputs
- modules/project_info/ – reusable module that manages a local file
- .github/workflows/terraform.yml – CI pipeline for format + validate

## Prerequisites

- Terraform >= 1.0 (tested with 1.14.7)
- Git

## Quick Start

terraform init
terraform validate
terraform plan
terraform apply

## CI

Every push and pull request runs:

- terraform fmt -check -recursive
- terraform init -backend=false
- terraform validate

## Limitations

- Uses the local provider only – no real cloud resources are created
- State is stored locally (not remote)
- No cost or cloud account required

## Licence

MIT
