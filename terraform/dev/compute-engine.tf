resource "google_compute_instance" "adesanu" {
  name         = var.instance_name
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

#   metadata = {
#     ssh-keys = var.pub_key
#   }

}

# data "google_client_openid_userinfo" "me" {
# }

# resource "google_os_login_ssh_public_key" "default" {
#   user = data.google_client_openid_userinfo.me.email
#   key  = file("~/.ssh/gcp-instance-adesanu.pub") # path/to/ssl/id_rsa.pub
# }

# resource "google_compute_project_metadata" "my_ssh_key" {
#   metadata = {
#     ssh-keys = var.pub_key
#   }
# }