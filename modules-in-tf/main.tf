module "ec2_module" {
    source = "./ec2"
    sg = module.sg_module.sg_id
}

module "sg_module" {
    source = "./sg"

}

# Printing the output from ec2 module
output "ip"{
    value=aws_instance.web.private_ip
}
