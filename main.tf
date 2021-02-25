terraform {
  required_providers {
    google-beta = {
      source = "hashicorp/google"
      version = "3.58.0"
    }
  }
}

provider "google-beta" {

  credentials = file("TerraformTutorial-a9fb6277ca8c.json")

  project = "terraformtutorial-305606"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

module "TerraformModule" {
  source = "git::git@github.com:Sathizz95/TerraformModule.git"
}

