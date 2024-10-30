#Root File

module "vpc" {
    source = "./vpc"
  
}

module "ec2" {
  source = "./EC2 Web"
  sn = module.vpc.sn
  sg = module.vpc.sg
}