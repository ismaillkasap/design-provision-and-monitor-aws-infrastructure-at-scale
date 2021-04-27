# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "<Your Access Key>"
  secret_key = "<Your Secret Key>"
  region = "eu-west-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami = "ami-0ffea00000f287d30"
  count = "4"
  instance_type = "t2.micro"
  subnet_id = "subnet-06f5b40e25ea0524e"
  tags = {
    Name = "Udacity T2"
  }
}


## Commented to delete 2 EC2 instances
# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "Udacity_M4" {
#   ami = "ami-0ffea00000f287d30"
#   count = "2"
#   instance_type = "m4.large"
#   subnet_id = "subnet-06f5b40e25ea0524e"
#   tags = {
#     Name = "Udacity M4"
#   }
# }
