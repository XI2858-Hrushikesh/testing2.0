resource "terminal" "shell" {
  target = resource.container.webserver
  shell  = "/bin/bash"
}
