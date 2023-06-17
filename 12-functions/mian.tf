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
      time = "7 PM"
    }
  }
}

output "DevOps_topics" {
  value = var.classes.devops.topics
}

#output "aws_topics" {
#  value = lookup(var.classes, "aws", null )
#}

output "aws_topics" {
  value = lookup(lookup(var.classes, "aws", null), "topics" , "no topics found")
}

#Condition
#output "aws_topics" {
#  value = lookup(lookup(var.classes, "aws", null ), "topics", null) == null ? "No AWS training" : lookup(lookup(var.classes, "aws", null), "topics" , null)
#}

output "fruits_count" {
  value = element(var.fruits,3)
}

variable "a" {
  default = 100
}

output "a" {
  value = var.a > 50 ? "surplus" : "Less Quantity"
}