# Values for the variable. Some values are not changed for convenience. 

# All configs are based on this region, for best results, please use the same region.
region = "ap-south-1"
creds="The location of AWS keys file."
vpc_name = "jiffletest"
vpc_cidr = "172.16.0.0/24"

# Use the same type if you are running on free tier 
instanceType= "t2.micro"
jdkrpm="Location of java8 jdk rpm file. Need to download that before running this"
git="PATH of git directory"
privKey="Location of private key of AWS key pair. For ssh access to launched instance."

# Please use this ami for testing this setup. All configs are based on this image. 
amiId="ami-00a3dd6f" 
count=1
