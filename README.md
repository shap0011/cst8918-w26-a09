CST8918 - DevOps: Infrastructure as Code \
Student: Olga Durham \
Student#: 040687883

# Hybrid-A09 Husky and GitHub Actions

---

## Overview

This project demonstrates a basic CI/CD pipeline for Infrastructure as Code (IaC) using Terraform, Husky, and GitHub Actions.

The purpose is to enforce code quality locally and validate Terraform configurations automatically during pull requests.

---

## Project Structure

cst8918-w26-a09/
├── infrastructure/
│   └── main.tf
├── .husky/
│   └── pre-commit
├── .github/
│   └── workflows/
│       └── action-terraform-verify.yml
├── package.json
├── .gitignore
└── README.md


---

## Terraform

A simple Terraform configuration is included in the `infrastructure` folder to support formatting and validation checks.

---

## Husky (Pre-commit Hook)

Husky is configured to run before each commit.

The following checks are executed:
- terraform fmt -check -recursive
- terraform validate
- tflint

This prevents improperly formatted or invalid Terraform code from being committed.

---

## GitHub Actions

A workflow is configured to run on pull requests to the main branch.

It includes:
- Terraform format check (fails if formatting is incorrect)
- Terraform validation (ensures configuration is valid)

---

## Testing

The pipeline was tested as follows:
- A formatting error was introduced and blocked locally by Husky
- The error was committed using --no-verify and pushed to a pull request
- GitHub Actions failed the formatting check
- After fixing the formatting, the workflow passed successfully

---

## Repository

https://github.com/shap0011/cst8918-w26-a09

---

## Summary

This project shows how to enforce Terraform code quality using pre-commit hooks and validate changes automatically with GitHub Actions.