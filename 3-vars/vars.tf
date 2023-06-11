variable "game" {
  default = "Cricket"
}

variable "games" {
  default = [
    "Cricket",
    "Football",
    "Hockey"
  ]
}

variable "game_detail" {
  default = {
    cricket = {
      player = 11
      umpire = 3
      time = 270
    }
    football = {
      player = 11
      umpire = 2
      time = 90
    }
    hockey = {
      player = 8
      umpire = 4
      time = 70
    }
  }
}

output "game" {
  value = var.game
}

output "games" {
  value = var.games[2]
}

output "game_detail-1" {
  value = var.game_detail["cricket"]
}

output "game_detail-2" {
  value = var.game_detail["football"]
}

output "game_detail-3" {
  value = var.game_detail["hockey"]
}