variable "table_name" {
  type = string
}

variable "database_name" {
  type = string
}

variable "description" {
  type = string
}

variable "table_type" {
  type = string
}

variable "location" {
  type = string
}

variable "input_format" {
  type = string
}

variable "output_format" {
  type = string
}

variable "columns" {
  type = list(object({
    name    = string
    type    = string
    comment = string
  }))
}

variable "serialization_library" {
  type = string
}

variable "ser_de_info_parameters" {
  type    = map(string)
  default = {}
}
