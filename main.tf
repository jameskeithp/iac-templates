provider "aws" {
  region = "us-east-2"  # Change this to your desired AWS region
}

resource "aws_instance" "zenith-micro-might" {
  count         = 3 # This will create three instances
  ami           = "ami-024e6efaf93d85776"  # This is an example, use the correct AMI for your region
  instance_type = "t2.micro"
  tags = {
    Name = "byte-breeze-dynamo-${count.index + 1}" # Add a unique tag for each instance
  }
}
