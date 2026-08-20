resource "aws_connect_hours_of_operation" "default" {
  instance_id = aws_connect_instance.this.id

  name        = "Business Hours"
  description = "Default business hours"
  time_zone   = "Europe/Berlin"

  config {
    day = "MONDAY"

    start_time {
      hours   = 8
      minutes = 0
    }

    end_time {
      hours   = 17
      minutes = 0
    }
  }

  config {
    day = "TUESDAY"

    start_time {
      hours   = 8
      minutes = 0
    }

    end_time {
      hours   = 17
      minutes = 0
    }
  }

  config {
    day = "WEDNESDAY"

    start_time {
      hours   = 8
      minutes = 0
    }

    end_time {
      hours   = 17
      minutes = 0
    }
  }

  config {
    day = "THURSDAY"

    start_time {
      hours   = 8
      minutes = 0
    }

    end_time {
      hours   = 17
      minutes = 0
    }
  }

  config {
    day = "FRIDAY"

    start_time {
      hours   = 8
      minutes = 0
    }

    end_time {
      hours   = 17
      minutes = 0
    }
  }
}