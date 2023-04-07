variable "admin_keys" {
  description = "Name and public key for all admins"
  type = list(object({
    name = string
    key  = string
  }))
  default = []
}

variable "user_keys" {
  description = "Name and public key for all users"
  type = list(object({
    name = string
    key  = string
  }))
  default = []
}
