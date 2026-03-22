resource "aws_ssm_parameter" "backend_alb_listener_arnsg_id" {
   name  = "/${var.project}/${var.environment}/backend_alb_listener_arn"
  type  = "String"
  value = module.sg[count.index].sg_id
}