variable "vpc_name" {
  default = "tuantran-tf-vpc"
}

variable "cidrvpc" {
  default = "10.0.0.0/16"
}

variable "tags" {
  default = {
    Name = "tuantran-vpc"
    Owner = "tuantran"
  }
}

variable "az_counts" {
  default = 3
}