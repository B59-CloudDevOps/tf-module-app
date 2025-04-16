data "aws_route53_zone" "main" {
  name         = "clouding-app.shop"
  private_zone = false
}

# data "aws_ami" "main" {
#   most_recent = true

#   owners = ["355449129696"]
#   tags = {
#     Name = "DevOps-LabImage-RHEL9"
#   }
# }

# Once you make your own ami using the lab image with Ansible installation
data "aws_ami" "main" {
  # most_recent = true    [ Don't use it and it might cause this ec2 instances to be recreated all the time ]

  owners = ["355449129696"]
  tags = {
    Name = "b59-learning-ami-with-ansible"
  }
}

data "vault_generic_secret" "ssh" {
  path = "expense-dev/ssh_cred"
}