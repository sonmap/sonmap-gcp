data "template_file" "jenkins-init"{
    template = file("/home/sonmap/GCP_TEST/vmcreate-terraform/gcp-code.sh")

    vars ={
        JENKINS_VERSION = var.JENKINS_VERSION
        TERRAFORM_VERSION = var.TERRAFORM_VERSION
    }
}

data "template_cloudinit_config" "cloudinit-jenkins"{

    gzip    = false
    base64_encode = false

    part{
        content_type    = "text/x-shellscript"
        content         = data.template_file.jenkins-init.rendered
    }
}