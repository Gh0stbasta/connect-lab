resource "aws_connect_routing_profile" "support" {

  instance_id = aws_connect_instance.this.id

  name        = "Support Routing Profile"
  description = "Default routing profile"

  default_outbound_queue_id = aws_connect_queue.support.queue_id

  media_concurrencies {
    channel     = "VOICE"
    concurrency = 1
  }

  queue_configs {
    channel  = "VOICE"

    delay    = 0
    priority = 1

    queue_id = aws_connect_queue.support.queue_id
  }
}