# Production Kubernetes Cluster with GitOps (IaC & ArgoCD)

Multi-environment cloud infrastructure fully provisioned via Terraform on AWS EKS, with microservices deployed continuously via ArgoCD following GitOps best practices.

## Architecture
```
[ GitHub Push ] -> [ GitHub Actions Terraform Validation ]
                           |
                           v
              [ AWS EKS Cluster Provisioned ]
                           |
                           v
    [ ArgoCD Controller ] <---> [ Helm Chart Repo Sync ]
                           |
                           v
             [ Pod Deployment on Kubernetes ]
```

## Features
- **Declarative Infrastructure**: Modular HCL Terraform scripts for VPC, subnets, and EKS control plane.
- **GitOps Continuous Delivery**: ArgoCD `Application` CRD with self-healing and automated pruning enabled.
- **Helm Package Management**: Parameterized `values.yaml` for environment scaling.
- **Automated CI/CD**: GitHub Actions workflow for syntax linting and `terraform validate`.

## Quick Start
```bash
cd terraform
terraform init
terraform plan
```

## Tech Stack
- **Infrastructure as Code**: Terraform (v1.5+)
- **Orchestration**: AWS EKS / Kubernetes
- **Continuous Delivery**: ArgoCD (GitOps)
- **Packaging**: Helm v3
