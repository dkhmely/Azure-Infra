variable "name" {
  type        = string
  description = ""
}

variable "location" {
  type        = string
  description = ""
}

variable "resource_group_name" {
  type        = string
  description = ""
}

variable "sku_name" {
  type        = string
  description = ""
}

variable "db_host" {
  type        = string
  description = ""
}

variable "db_user" {
  type        = string
  description = ""
}

variable "db_password_secret_url" {
  type        = string
  description = ""
}

variable "db_name" {
  type        = string
  description = ""
}

variable "subnet_id" {
  type        = string
  description = ""
}

variable "acr_role_assignment_scope_id" {
  type        = string
  description = ""
}

variable "kv_role_assignment_scope_id" {
  type        = string
  description = ""
}
