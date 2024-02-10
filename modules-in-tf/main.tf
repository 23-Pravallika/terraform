module "ec2_module" {
    source = "./ec2"
    sg = module.sg_module.sg_id
}

module "sg_module" {
    source = "./sg"

}

