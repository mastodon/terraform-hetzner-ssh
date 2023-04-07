output "admin_key_ids" {
  description = "Hetzner IDs for admin SSH keys"
  value       = hcloud_ssh_key.admin_keys.*.id
}

output "user_key_ids" {
  description = "Hetzner IDs for user SSH keys"
  value       = hcloud_ssh_key.user_keys.*.id
}

output "admin_key_fingerprints" {
  description = "Hetzner IDs for admin SSH keys"
  value       = hcloud_ssh_key.admin_keys.*.fingerprint
}

output "user_key_fingerprints" {
  description = "Hetzner IDs for user SSH keys"
  value       = hcloud_ssh_key.user_keys.*.fingerprint
}

