resource "aws_instance" "demo" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  associate_public_ip_address = true
  user_data     = file("app.sh")
  subnet_id     = module.vpc-route.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.route_sg.id]
  tags = {
    Name = var.name
    environment = var.env
  }


}