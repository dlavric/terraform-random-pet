provider "random" {
  # Configuration options
}

provider "time" {
  # Configuration options
}

resource "random_pet" "server" {
  length = 3

}

resource "null_resource" "previous" {}

resource "time_sleep" "wait_30_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "300s"
}

# This resource will create (at least) 30 seconds after null_resource.previous
resource "null_resource" "next" {
  depends_on = [time_sleep.wait_30_seconds]
}

output "server" {
  value = random_pet.server.id
}
