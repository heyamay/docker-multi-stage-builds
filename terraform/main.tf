provider "aws" {
  region = "ap-south-1"  # Change to your desired region 
}

resource "aws_instance" "flask_app" {
  ami           = "ami-05c179eced2eb9b5b"  
  instance_type = "t2.micro"
  
  key_name = "flask-app"  # Ensure you have an AWS key pair configured 

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              # Install Docker
              sudo amazon-linux-extras install docker -y
              sudo service docker start
              sudo usermod -a -G docker ec2-user
              # Pull your Docker image from a repository (You need to push your image to ECR or Docker Hub first)
              # For example:
              # sudo docker run -d -p 80:5000 your-docker-image
              EOF

  tags = {
    Name = "FlaskAppInstance"
  }
}

output "instance_public_ip" {
  value = aws_instance.flask_app.public_ip
}


