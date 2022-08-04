provider "random" {
  # Configuration options
}

resource "random_pet" "server" {
  length = 3

}

output "server" {
  value = random_pet.server.id
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "daniela-org"

    workspaces {
      name = "random-pet"
    }
  }
}
