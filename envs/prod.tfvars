vpc_name = "pro_env"
cidrvpc  = "10.0.0.0/16"
vm-config = {
  vm1 = {
    instance_type = "t2.medium",
    tags = {
      "ext-name" = "vm2"
    }
  },
  vm2 = {
    instance_type = "t2.large",
    tags          = {}
  }
}

bastion_definition = {
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
