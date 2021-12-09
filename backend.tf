terraform{
    required_providers{
        google = " ~> 3.5"
    }

    backend "gcs"{
        credentials = "/var/lib/jenkins/copper-creek-334508-74e1b1ac412a.json"
        bucket      = "gcs-an3-sonmap-vm"
        prefix      = "jenkins.terraform.tfstate"
    }
}