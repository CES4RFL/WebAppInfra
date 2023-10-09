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