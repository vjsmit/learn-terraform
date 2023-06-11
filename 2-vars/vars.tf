variable "Sample" {
  default = 100
}

variable "Sample1" {
  default = "Hello World"
}

output "sample" {
  value = var.Sample
}

output "sample1" {
  value = var.Sample1
}
