# route53 zone

# domain

# region
variable region {
default = "ap-northeast-2"
}

# access_cidr

# prefixes
variable prefixes {
  type = "map"
  default = {
    "mgmt" = "10.30.0.0/16"
    "prod" = "10.31.0.0/16"
  }
}