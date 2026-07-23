resource "aws_connect_queue" "support" {
  instance_id = aws_connect_instance.this.id

  hours_of_operation_id = aws_connect_hours_of_operation.default.hours_of_operation_id

  name        = "Support"
  description = "Default support queue"
}