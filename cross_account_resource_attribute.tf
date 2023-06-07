
resource "aws_instance" "shivani-demo-ec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}


resource "aws_eip" "lbdemo" {
  vpc      = true
}

resource "aws_epi_association" "eip_assoc"{
    intance_id= "aws_instance.shivani-demo-ec2.id"
    allocation_id="aws_eip.lbdemo"
}
