resource "aws_connect_contact_flow" "inbound_welcome" {

  instance_id = aws_connect_instance.this.id

  name = "Inbound Welcome"

  type = "CUSTOMER_QUEUE"

  content = templatefile(
    "${path.root}/../flows/inbound-welcome.tftpl",
    {
      queue_arn = aws_connect_queue.support.arn
    }
  )
}