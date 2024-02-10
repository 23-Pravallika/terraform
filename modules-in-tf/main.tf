module "ec2_module" {
    source = "./ec2"
    sg = module.sg.sg_id
    
}

module "sg_module" {
    source = "./sg"

}

