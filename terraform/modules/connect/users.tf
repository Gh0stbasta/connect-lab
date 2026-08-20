resource "aws_connect_user" "stefan" {
  instance_id = aws_connect_instance.this.id

  name = "stefan"

  identity_info {
    first_name = "Stefan"
    last_name  = "Schmidpeter"
  }

  phone_config {
    phone_type = "SOFT_PHONE"

    auto_accept = false

    after_contact_work_time_limit = 0
  }

  routing_profile_id = aws_connect_routing_profile.support.routing_profile_id

  security_profile_ids = [
    data.aws_connect_security_profile.agent.security_profile_id
  ]

  password = "ConnectLab2026!"
}

resource "aws_connect_user" "admin" {
  instance_id = aws_connect_instance.this.id

  name = "admin"

  identity_info {
    first_name = "Stefan"
    last_name  = "Admin"
  }

  phone_config {
    phone_type = "SOFT_PHONE"

    auto_accept = false

    after_contact_work_time_limit = 0
  }

  routing_profile_id = aws_connect_routing_profile.support.routing_profile_id

  security_profile_ids = [
    data.aws_connect_security_profile.admin.security_profile_id
  ]

  password = "ConnectLab2026!"
}