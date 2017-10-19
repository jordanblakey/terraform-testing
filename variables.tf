# data "aws_ami" "linux_ami" {
#   most_recent = true
#
#   filter {
#     name = "owner-alias"
#     values = ["amazon"]
#   }
#
#   filter {
#     name = "name"
#     values = ["amzn-ami-hvn-2017.03.1.20170623-x86_64-gp2"]
#   }
# }
#
# resource "aws_instance" "instance" {
#   ami = "${data.aws_ami.linux_ami.id}"
#   instance_type = "t2.micro"
#   security_groups = ["${aws_security_group.instance.id}"]
#   subnet_id = "${var.subnet_id}"
#   tags {
#     Name = "${var.name_tag}"
#     AppGroup = "Web"
#   }
# }
# resource "aws_security_group" "instance" {
#   name = "instance-sg"
#   vpc_id = "vpc-8beeb5ef"
#   ingress {
#     from_porrt = "${var.port}"
#     top_port = "${var.port}"
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }