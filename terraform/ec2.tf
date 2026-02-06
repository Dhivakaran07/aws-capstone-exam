resource "aws_instance" "web1" {
  ami = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name = var.key_name
}
resource "aws_instance" "web2" {
  ami = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public2.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name = var.key_name
}
terraform/alb.tf
resource "aws_lb" "alb" {
  name = "streamline-alb"
  load_balancer_type = "application"
  subnets = [aws_subnet.public1.id, aws_subnet.public2.id]
  security_groups = [aws_security_group.web_sg.id]
}
resource "aws_lb_target_group" "tg" {
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.streamline.id
}
