locals {
  is_t_instance_type = replace(var.instance_type, "/^t(2|3|3a){1}\\..*$/", "1") == "1" ? true : false
}

resource "aws_instance" "this" {
  count = var.instance_count

  ami              = var.ami
  instance_type    = var.instance_type
  
  key_name               = var.key_name
}