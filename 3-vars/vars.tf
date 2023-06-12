variable "movie" {
  default = "Lakshya"
}

variable "movies" {
  default = [
    "Lakshya",
    " Piku",
    "Hanuman"
  ]
}

variable "movie_details" {
  default = {
    Lakshya = {
      Actor = "Hritik"
      Actress = "Zinta"
      Review = "Hit"
  }
    Piku = {
      Actor = "Irfan Khan"
      Actress = "Deepika"
      Review = "Average"
    }
  }
}

output "movie" {
  value = var.movie
}