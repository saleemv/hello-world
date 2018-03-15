# hello-world
Setting up hello-world app on aws using containers and terraform for JiffleNow assignment.


The expectation is of this task is to come with an architecture and implementation:
    • Enable the company to deploy their applications easily to a fully load balanced public cloud (e.g. AWS) from scratch.
    • Use infrastructure as code to deploy (e.g. Ansible, Terraform)
    • Application installation: A Docker container running the provided webservice  
        o Only use official images from docker hub.
        o Oracle Java 8.x (not OpenJDK).
        o To run the service, execute: java -jar helloworld.war (Service will be available on port 8080)
    • A webserver (e.g. apache, nginx, haproxy) which proxies http/s to the application container. While creating all this, please keep         all your scripts and configs under version control (e.g. Git) to keep a decent history of your work. 
 
We are very keen to understand and follow how you solved the problem. Expected deliverables: 
    • All your dockerfiles, scripts, configs, playbooks, formulas etc. in a DVCS (e.g. GitHub, Bitbucket). 
    • A brief document to restore your files to be able to do the deployment based on your recipes/playbooks.
    • Do not provide pre-built docker images. 
