resource "aws_instance" "mern_app" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = Subhadeep

  tags = {
    Name = "MERN-App-Instance"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install docker.io -y",
      "sudo systemctl start docker",
      "sudo docker run -d -p 3000:3000 Subhadeep/mern-frontend",
      "sudo docker run -d -p 5000:5000 Subhadeep/mern-backend"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/your-key.pem")
      host        = self.public_ip
    }
  }
}
