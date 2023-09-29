resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello, World!"
  }
}

resource "null_resource" "byebye" {
  provisioner "local-exec" {
    command = "echo Bye-bye, World!"
  }
}

resource "random_pet" "pet" {}

resource "random_pet" "dragon" {}
