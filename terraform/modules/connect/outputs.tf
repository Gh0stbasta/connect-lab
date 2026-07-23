output "connect_instance_id" {
  value = aws_connect_instance.this.id
}

output "connect_instance_arn" {
  value = aws_connect_instance.this.arn
}

output "contact_flow_id" {
  value = aws_connect_contact_flow.inbound_welcome.id
}