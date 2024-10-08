env_prefix                             = "dev"
vpc_name                               = "dev_env"
cidrvpc                                = "10.0.0.0/16"
enable_nat_gateway                     = true
single_nat_gateway                     = true
enable_dns_hostnames                   = true
create_database_subnet_group           = true
create_database_subnet_route_table     = true
create_database_internet_gateway_route = true
enable_flow_log                        = true
create_flow_log_cloudwatch_iam_role    = true
create_flow_log_cloudwatch_log_group   = true
eks_config = {
  cluster_name                                   = "tuantraneks"
  cluster_version                                = "1.30"
  min_size                                       = 3
  max_size                                       = 9
  eks_managed_node_group_defaults_instance_types = ["t2.2xlarge", "t2.large"]
  instance_type                                  = "t2.2xlarge"
  instance_types                                 = ["t2.2xlarge", "t2.large"]
  manage_aws_auth_configmap                      = true
  endpoint_public_access                         = true
  aws_auth_users = [
    {
      userarn  = "arn:aws:iam::629526135429:user/joe-dev"
      username = "joe-dev"
      groups   = ["system:masters"]
    },
  ]
  cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"],
  eks_cw_logging                       = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
}
vm-config = {
  vm1 = {
    instance_type = "t2.small",
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

bastion_definition = {
    "bastion" = {
      associate_public_ip_address = false
      bastion_ami                 = "ami-049ab91771b49438b"
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
cluster_endpoint_public_access = true