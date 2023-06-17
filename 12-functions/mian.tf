variable "class" {
  default = "devops"
}

output "class" {
  value = upper(var.class)
}

variable "fruits" {
  default = [ "apple", "banana", "mango" ]
}

output "fruits" {
  value = length(var.fruits)
}

variable "classes" {
  default = {
    devops = {
      name = "devops"
      time = "8 AM"
      topics = [ "shell", "python" ]
    }
    aws = {
      name = "aws"
    }
  }
}

#output "classes" {
#  value = var.classes.devops.topics
#}

output "classes" {
  value = var.classes["devops"]["topics"]
}