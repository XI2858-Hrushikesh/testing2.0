resource "vm" "elastic-image-test" {
  network {
    id = resource.network.main.meta.id
  }

  image {
    name = "instruqt-support/newtest"
  }

  resources {
    cpu    = 2
    memory = 2048
  }
}
