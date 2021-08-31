terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "2.1.0"
    }
    null = {
      source = "hashicorp/null"
      version = "3.1.0"
    }
  }
}

resource "null_resource" "readcontentfile" {
  provisioner "local-exec" {
    command = "prepare.sh"
    interpreter = ["bash"]
  }
}

data "http" "example" {
  url = "http://10.120.0.74:9090/metrics"
}
