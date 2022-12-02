module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "jenkins_testbuild"
  cidr = "172.17.0.0/16"

  azs             = ["us-east-1a", "us-east-1a"]
  private_subnets = ["172.17.3.0/24", "172.17.4.0/24"]
  public_subnets  = ["172.17.1.0/24", "172.17.2.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "jenkins_testbuild"
    Version = "v1.1.7"
  }
}

module "vpc2" {
  source = "terraform-aws-modules/vpc/aws"

  name = "jenkins_testbuild2"
  cidr = "172.18.0.0/16"

  azs             = ["us-east-1a", "us-east-1a"]
  private_subnets = ["172.18.3.0/24", "172.18.4.0/24"]
  public_subnets  = ["172.18.1.0/24", "172.18.2.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "jenkins_testbuild1"
    Version = "v1.1.7"
  }
}