module "vpc" {
    source = "git::https://github.com/nageswar-r/roboshop-infra-dev-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    is_peering_required = true
}