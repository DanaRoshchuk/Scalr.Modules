
resource "null_resource" "single" {
count= 5
  triggers= {
    time= timestamp()
  }
}

output  "time" {
  value = timestamp()
}
