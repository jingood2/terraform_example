
#aws_key_pair




#vpc

resource aws_security_group "instance" {
  name = "terraform-example-instance"
  ingress {
    from_port = "${var.server_port}"
    protocol = "tcp"
    to_port = "${var.server_port}"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami = "ami-d265bebc"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.instance.id}"]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p "${var.server_port}" &
              EOF

  tags {
    Name = "terraform-example"
  }
}

# mgmt private subnet

# mgmt public submet

# igw

# routing table

# default route

# nat eip

# mgmt nat gw

# mgmt private nat

# aws route table association


