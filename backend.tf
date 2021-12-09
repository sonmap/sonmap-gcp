terraform{
    required_providers{
        google = " ~> 3.5"
    }

    backend "gcs"{
        credentials = "/var/lib/jenkins/pjt-an3-gketest-dev-78cdd3d69f38.json"
        bucket      = "terraform-test-0618"
        prefix      = "jenkins.terraform.tfstate"
    }
}