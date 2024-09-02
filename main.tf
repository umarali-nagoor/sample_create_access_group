
provider "ibm" {
    ibmcloud_api_key = var.ibmcloud_api_key
}

terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = ">= 1.12.0"
    }
  }
}

resource "ibm_iam_access_group" "accgrp" {
  name        = "test"
  description = "New access group"
}


