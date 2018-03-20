# For setting up the ssh key that will be used to access the instance. Give the public key details and safely store the private key. 
#This key will be added to the $HOME/.ssh/authorized_keys file.

provider "aws" {
        region = "${var.region}"
        shared_credentials_file = "${var.creds}"
}

resource "aws_key_pair" "admin_key" {
        key_name = "admin_key"
        public_key = "<Paste the public key here>"
}

