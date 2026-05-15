# THE KEY PAIR
resource "aws_key_pair" "deployer_key" {
  key_name   = "phoenix-favour-key"
  public_key = file("~/.ssh/id_ed25519.pub")
}

# THE SECURITY GROUP (The Firewall)
resource "aws_security_group" "phoenix_sg" {
  name        = "phoenix-allow-ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# THE EC2 INSTANCE
resource "aws_instance" "weather_server" {
  ami                    = "ami-04b70fa74e45c3917"
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.deployer_key.key_name
  vpc_security_group_ids = [aws_security_group.phoenix_sg.id]

  tags = {
    Name = "Phoenix-Weather-App"
  }
}

