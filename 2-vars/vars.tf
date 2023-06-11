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

output "sample_ext" {
  value = "value of Sample is ${var.Sample}"
}

#Plain
variable "course" {
  default = "DevOps Training"
}

#List
variable "courses" {
  default = [
    "DevOps",
    "AWS",
    "Python"
  ]
}

#map
variable "course_details" {
  default = {
    DevOps = {
      name = "DevOps"
      timing = "10 PM"
      duration = 90
    }
    Python = {
      name = "Python"
      timing = "11 PM"
      duration = 30
    }
  }
}

output "course" {
  value = var.course
}

output "courses" {
  value = var.courses[0]
}

output "course_details" {
  value = var.course_details["DevOps"]
}