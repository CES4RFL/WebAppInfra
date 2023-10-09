#Archivo contiene las variables de entrada que espera el modulo de ec2
variable "ami" {
  description = "Name of ami"
  type        = string
}

variable "machine_type" {
  description = "Machine type"
  type        = string
}

variable "tag_name" {
  description = "Tags to set on the bucket."
  type        = string
  default     = "ExampleAppServerInstance"
}