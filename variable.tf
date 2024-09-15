variable "vpc_name" {
  default = "tuantran-vpc"
}

variable "cidrvpc" {
  default = "10.0.0.0/16"
}

variable "tags" {
  default = {
    Name = "tuantran-vpc-test2"
    Owner = "tuantran"
  }
}

# variable "az_counts" {
#   default = 3
# }

variable "vm-config" {
  default = {
    vm1 = {
      instance_type = "t3.small",
      tags = {
        "ext-name" = "vm2"
        "funct"    = "purpose test"
      }
    },
    vm2 = {
      instance_type = "t3.medium",
      tags          = {}
    }
  }

}

variable "bastion_definition" {
  description = "The definition of bastion instance"
  # type = map(object({
  #   bastion_name                = string
  #   bastion_public_key          = string
  #   bastion_ami                 = string
  #   bastion_instance_class      = string
  #   trusted_ips                 = set(string)
  #   user_data_base64            = string
  #   associate_public_ip_address = bool
  #   bastion_monitoring          = bool
  #   ext-tags  = map(object({}))
  # }))
  default = {
    "bastion" = {
      associate_public_ip_address = false
      bastion_ami                 = "ami-0023481579962abd4"
      bastion_instance_class      = "t3.small"
      bastion_monitoring          = true
      bastion_name                = "bastion"
      bastion_public_key          = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJyqbDZMKTXSTCM9Sf6k2Oxg/yU+xPESrtdMManPkQjp tranvuonganhtuan@gmail.com"
      trusted_ips                 = ["42.112.79.203/32"]
      user_data_base64            = null
      ext-tags = {
        "fucnt" = "demo-tf"
      }
    }
  }
}
