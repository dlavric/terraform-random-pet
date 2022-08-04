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
    hostname = "192.168.56.33.nip.io"
    organization = "skills-map"

    workspaces {
      name = "random-pet"
    }
  }
}
