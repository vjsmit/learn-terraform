resource "aws_instance" "web" {
  for_each = var.instances
  ami = data.aws_ami.example.id
  instance_type = lookup(each.value, "instance_type", "t3.small" )

  tags = {
     Name = each.key
  }
}

data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

variable "instances" {
   default = {

     frontend = {
       name = "frontend"
     }
     catalogue = {
       name = "catalogue"
       instance_type = "t3.nano"
     }
     cart = {
       name = "cart"
       instance_type = "t3.nano"
     }

   }
}