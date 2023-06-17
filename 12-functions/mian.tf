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