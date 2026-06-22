resource "task" "edit_homepage" {
  description = "Change the webpage background color from red to blue"

  config {
    target = resource.container.webserver
  }

  condition "file_modified" {
    description = "Change background-color from red to blue in index.html"

    setup {
      script = "scripts/setup.sh"
    }

    check {
      script          = "scripts/check_homepage.sh"
      failure_message = "The background color is not blue yet. Edit /usr/share/nginx/html/index.html and change 'background-color: red' to 'background-color: blue'"
    }
  }
}
