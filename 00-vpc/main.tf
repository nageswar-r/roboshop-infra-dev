module "vpc"{
    source = "git::https://github.com/nageswar-r/roboshop-infra-dev-test.git?ref=main"
    project = var.project
    environment = var.environment
    is_peering_required = true
}