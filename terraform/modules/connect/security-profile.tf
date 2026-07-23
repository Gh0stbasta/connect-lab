data "aws_connect_security_profile" "agent" {
  instance_id = aws_connect_instance.this.id

  name = "Agent"
}

data "aws_connect_security_profile" "admin" {
  instance_id = aws_connect_instance.this.id

  name = "Admin"
}