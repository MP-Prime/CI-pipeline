resource "aws_db_instance" "live_rds" {
   allocated_storage  = 20
   storage_type  = "gp2"
   engine  = "mysql"
   engine_version  = "5.7"
   instance_class  = "db.t2.micro"
   name  = "prod_db"
   username  = var.username
   password  = var.password
   parameter_group_name  = "default.mysql5.7"
   db_subnet_group_name  = aws_db_subnet_group.default.name
   vpc_security_group_ids = var.sg_ids
   skip_final_snapshot = true
   identifier = "ci_pipeline_live_rds"

   tags ={
      Name = "live_rds"
      project = "CI_Pipeline"
   }
}

resource "aws_db_instance" "test_rds" {
   allocated_storage  = 20
   storage_type  = "gp2"
   engine  = "mysql"
   engine_version  = "5.7"
   instance_class  = "db.t2.micro"
   name  = "prod_db"
   username  = var.username
   password  = var.password
   parameter_group_name  = "default.mysql5.7"
   db_subnet_group_name  = aws_db_subnet_group.default.name
   vpc_security_group_ids = var.sg_ids
   skip_final_snapshot = true
   identifier = "ci_pipeline_test_rds"

   tags ={
      Name = "test_rds"
      project = "CI_Pipeline"
   }
}

resource "aws_db_subnet_group" "default" {
    name = "main"
    subnet_ids = [var.subnet_id, var.subnet_2_id]

   tags ={
      project = "CI_Pipeline"
   }
}