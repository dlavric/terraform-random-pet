terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "daniela-org"

    workspaces {
      name = "remote-random-pet"
    }
  }
}

data "terraform_remote_state" "random-pet" {
  backend = "remote"

  config = {
    organization = "daniela-org"
    workspaces = {
      name = "random-pet"
    }
  }
}

output "from_other" {
value = data.terraform_remote_state.random-pet.outputs.server
}
