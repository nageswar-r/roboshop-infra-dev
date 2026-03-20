module "sg" {
    count = length(var.sg_names)
    source = "git::https://github.com/nageswar-r/roboshop-infra-dev-sg.git?ref=main"
    project = var.project
    environment = var.environment
    sg_name = replace(var.sg_names[count.index], "_", "-")
    vpc_id = local.vpc_id
}