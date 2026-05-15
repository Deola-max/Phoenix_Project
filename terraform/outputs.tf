output "server_public_ip" {
  value = aws_instance.weather_server.public_ip
}
