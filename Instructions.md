### Intro:
Creates instances on EC2 that will run the helloworld java app inside a docker container. The app is listening on port 8080. 
There is a load balancer that will redirect the traffic to the hosts.  
The instances will take traffic only from LB (private network). 
  * _(For convenience of testing I have provided internet gateway, but these will be removed in the next release)._

During the instance launch, Docker container is installed in it, Oracle JAVA 8 jdk, Dockerfile, and the application file is copied.
Then all these are installed. Docker image is build, and a container is started with the app running in it. 
Also, during the launch, terraform will update the LB with the instance details.

At the end, Terraform will output the dns_name of lb (lbname with ec2 domain), which can be used to access the app. 
We can add dns names for this and make it look better. (Since Route53 is a paid service, I haven't tried that.)


### Steps:
<h4> 1. Install Terraform </h4>

  * Download the zip file from [site](https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_linux_amd64.zip) and install it.
  * Set ENV **TF_LOG=DEBUG** and **TF_LOG_PATH**
 
<h4> 2. Get Files from Git. </h4>

  * Clone or download the files from this [git repo](https://github.com/saleemv/hello-world.git)

<h4> 3. Download Oracle Java 8 JDK-8u161 </h4>

  *  Instructions for that is [here](java8-setup.md)

<h4> 4. Update the values for variables</h4>
  
  * Inside [terraform.tfvar](terraform/terraform.tfvar).
  * If you don't have AWS account, now is the time to create one, with permissions mentioned in [prerquisites](prerequisites)
  * Create the ssh key pair that need to goto the aws instances. And update their locations in the tfvar file.

<h4> 5. Terraform plan </h4>

  * Goto terraform directory and run terraform plan.  :pray:
  
   `terraform plan`
   
   * Will see the blueprint of what terraform is going to do. 
   * If everything is as you planned. Proceed to apply that.
   
  <h4> 6. Terraform apply <h4>
  
  * Now run terraform apply.  
  `terraform apply`     :pray:
   
This will create the instances, setup elb, register the instances on lb, install docker inside the instance, 
run the java app in the container. 

  <h4> 7. Name of LB </h4>
  
  * Run `terraform output link` to get the dns_name of lb. We can use that to hit our app. 
  Or we can make a cname entry against this name and use that. 
  
