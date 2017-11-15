provider "aws" {
  region = "${module.gv.region}"
  access_key = "${module.gv.aws_key}"
  secret_key = "${module.gv.aws_secret}"
}

module gv {
  source = "../../global-vars"
}

data "aws_availability_zones" "azs" {}
