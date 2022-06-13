terraform {
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.2"
    }
  }
}

data "http" "terraform_version" {
  url = "https://checkpoint-api.hashicorp.com/v1/check/terraform"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

resource "random_pet" "pet" {
  length = var.word-count
}

resource "random_string" "random_word" {
  length = var.word-length
}
