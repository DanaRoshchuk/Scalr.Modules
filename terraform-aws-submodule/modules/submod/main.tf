
variable "run_id" {
  default = "run_id_2"
  sensitive = true
}

variable "sleep_time" {
  default = 2
}

variable "dynatrace-operator_enabled" {
  description = "dynatrace-operator_enabled" 

type = bool 
  default = true
  
}




resource "random_integer" "integer" {
  count = 1
  min = 31
  max = 180

  keepers = {
    run_id = var.run_id
  }
}

resource "null_resource" "wait1" {
  count = 1
  triggers = {
    run_id = var.run_id
  }
  provisioner "local-exec" {
    command = "sleep ${var.sleep_time}"
  }
}

resource "null_resource" "env_varstimeout0123456789" {
  count = 1
  triggers = {
    run_id = var.run_id
  }
  provisioner "local-exec" {
    command = "env"
  }
}




output "senc_out" {
  value = "longtext"
  description = "gfhjtfjhfkjhkj"
  sensitive = false
}
