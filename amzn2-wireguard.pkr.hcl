source "amazon-ebs" "amzn2" {
  ami_name      = var.ami_name
  region        = "us-east-1"
  instance_type = "t3.micro"

  source_ami_filter {
    filters = {
      virtualization-type = "hvm"
      name                = "amzn2-ami-hvm-2.0.*-x86_64-gp2"
      root-device-type    = "ebs"
    }
    owners      = ["amazon"]
    most_recent = true
  }
  communicator = "ssh"
  ssh_username = "ec2-user"
}

build {
  sources = [
    "source.amazon-ebs.amzn2"
  ]
  provisioner "shell" {
    script          = "./provision.sh"
    execute_command = "chmod +x {{ .Path }}; {{ .Vars }} sudo {{ .Path }}"
  }
}
