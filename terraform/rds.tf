resource "aws_db_subnet_group" "db_subnet" {
  subnet_ids = [aws_subnet.private1.id, aws_subnet.private2.id]
}

resource "aws_db_instance" "mysql" {
  engine = "mysql"
  instance_class = "db.t3.micro"
  allocated_storage = 20
  db_name = "streamline"
  username = "admin"
  password = "dhiva123"
  skip_final_snapshot = true
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name = aws_db_subnet_group.db_subnet.name
}
