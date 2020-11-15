project = "example-nodejs"

app "example-nodejs" {
  labels = {
    "service" = "example-nodejs",
    "env" = "dev"
  }

  build {
    use "docker" {}
  }

  deploy {
    use "docker" {
	service_port = 80
    }
  }
}
