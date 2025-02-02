##Create and bootstrap webserver #lanzar
resource "aws_instance" "webserver" {
  ami                         = "ami-00c39f71452c08778"
  instance_type               = "t2.micro"
  key_name                    = pin2-practico
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.subnet.id
  user_data                   = "${file("create_apache.sh")}"

  tags = {
    Name = "webserver"
  }
}
