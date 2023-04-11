resource "random_id" "my_id" {
    count = 3
    byte_length = 5
    prefix = "Yowsa_"
}

output "id_out" {
    value = random_id.my_id[*].b64
}
