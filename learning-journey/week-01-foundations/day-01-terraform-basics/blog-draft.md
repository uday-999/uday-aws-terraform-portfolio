# Day 1 — My Introduction to Terraform and Infrastructure as Code

Today I officially started my Terraform + AWS cloud engineering journey.

My first major learning was understanding Infrastructure as Code (IaC), which is one of the most important concepts in modern cloud engineering.

Traditionally, infrastructure was created manually using cloud dashboards. For example, if a developer needed an EC2 instance, they would log into AWS Console, click through multiple menus, configure networking, storage, security groups, and launch the server manually.

This works for small tasks, but becomes problematic at scale.

Some major challenges with manual infrastructure management include:

- inconsistent environments
- human error
- poor repeatability
- configuration drift
- time-consuming deployments
- lack of version control

Infrastructure as Code solves this by allowing infrastructure to be defined in code.

Instead of clicking buttons manually, infrastructure can be described declaratively and deployed automatically.

Terraform is one of the most widely used Infrastructure as Code tools.

Terraform allows engineers to define infrastructure in configuration files and provision resources across cloud providers such as AWS, Azure, and Google Cloud.

One thing I found particularly interesting is Terraform’s declarative approach.

Rather than describing step-by-step instructions, we define the desired end state, and Terraform determines what actions are needed to reach that state.

Terraform workflow includes:

## terraform init

Initializes the working directory and downloads required provider plugins.

## terraform validate

Checks whether the configuration syntax is correct.

## terraform plan

Shows what Terraform intends to create, modify, or destroy.

## terraform apply

Executes the infrastructure deployment.

## terraform destroy

Removes created infrastructure safely.

This workflow introduces predictability into infrastructure deployment.

Another major takeaway for me is version control.

Because infrastructure is written as code, it can be tracked using Git, reviewed by teams, and safely modified over time.

I also learned that Terraform interacts with cloud APIs through providers.

Workflow example:

Terraform Code → Terraform Provider → AWS API → Infrastructure Creation

Benefits of Terraform and IaC:

- consistency
- automation
- scalability
- reduced human error
- reusable infrastructure
- collaboration
- cost control
- version management

As part of Day 1, I also:

- installed Terraform
- verified CLI setup
- created my GitHub AWS Terraform portfolio
- documented my learning journey professionally

This is just the foundation, but it already changed how I think about cloud infrastructure.

Instead of treating infrastructure as something configured manually, I now see it as software that can be designed, versioned, and automated.

Excited for Day 2.