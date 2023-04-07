# Admin keys
resource "hcloud_ssh_key" "admin_keys" {
  count      = length(var.admin_keys)
  name       = var.admin_keys[count.index].name
  public_key = var.admin_keys[count.index].key

  labels = {
    role = "admin"
  }
}

# User keys
resource "hcloud_ssh_key" "user_keys" {
  count      = length(var.user_keys)
  name       = var.user_keys[count.index].name
  public_key = var.user_keys[count.index].key

  labels = {
    role = "user"
  }
}
