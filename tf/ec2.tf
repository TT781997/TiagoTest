
#resource "aws_instance" "nginx" {
#    ami = "${lookup(var.ami, var.region)}"
#    instance_type = "t2.micro"    # VPC
#    subnet_id = "${aws_subnet.tiagotest-subnet-public-1.id}"    # Security Group
#    vpc_security_group_ids = ["${aws_security_group.tiagotest-ssh-allowed.id}"]    # the Public SSH key
#    key_name = "${aws_key_pair.frankfurt-region-key-pair.id}"    # nginx installation
#    provisioner "file" {
#        source = "nginx.sh"
#        destination = "/tmp/nginx.sh"
#    }    
#    provisioner "remote-exec" {
#        inline = [
#             "chmod +x /tmp/nginx.sh",
#             "sudo /tmp/nginx.sh"
#        ]
#    }    
#    connection {
#        user = "${var.EC2_USER}"
#        private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
#    }
#}// Sends your public key to the instance
#resource "aws_key_pair" "frankfurt-region-key-pair" {
#    key_name = "frankfurt-region-key-pair"
#    public_key = "${file(var.PUBLIC_KEY_PATH)}"
#}