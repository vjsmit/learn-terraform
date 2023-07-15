variable "name" {
  default = {
    fruit_name = "apple"
  }
}

variable "details" {
  default = {
    quantity = 100
    rating = 4.2
  }
}

output "fruit" {
  value = merge(var.name, var.details)
}