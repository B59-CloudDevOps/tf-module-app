data "aws_route53_zone" "main" {
  name         = "clouding-app.shop"
  private_zone = false
}

data "aws_ami" "main" {
  most_recent = true

  owners = ["355449129696"]
  tags = {
    Name = "DevOps-LabImage-RHEL9"
  }
}