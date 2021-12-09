
provider "google" {
  version = "3.5.0"
  credentials = "/var/lib/jenkins/copper-creek-334508-74e1b1ac412a.json"
  project = "copper-creek-334508"
  region  = "asia-northeast3"
  zone    = "asia-northeast3-a"
}




resource "google_compute_instance" "default" {
  name         = var.VM_NAME
  machine_type = var.VM_MACHINE_TYPE
  zone         = var.VM_ZONE


  #metadata_startup_script = data.template_cloudinit_config.cloudinit-jenkins.rendered



  tags = ["sgtag-ssh-22", "icmp", "sgtag-allow-8080-ingress"]
  
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      type = "pd-standard"
      size = 20
    }
  }
  network_interface {
    subnetwork = data.google_compute_subnetwork.subnet4.self_link
    access_config {
    }
  }

 
 
  metadata = {
    foo = "bar"
  }

  
}


