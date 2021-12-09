terraform{
    required_providers{
        google = " ~> 3.5"
    }

    backend "gcs"{
        credentials = "/home/sonmap/GCP_TEST/copper-creek-334508-74e1b1ac412a.json"
        bucket      = "gcs-an3-sonmap-src01"
        prefix      = "jenkins.terraform.tfstate"
    }
}