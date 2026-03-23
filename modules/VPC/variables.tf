variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_publica_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "nombre" {
  type    = string
  default = "mi-vpc"
}