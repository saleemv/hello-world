Need Oracle Java 8* for this assignment. We are using jdk-8u161 in this assignment.
Downloading jdk file from console is not working now, as there is that agreement field. 
Will need to get the temporary cookie and use that in the code, but since its not valid for long, we will have to change the code everytime we have to build the image.
So as a work around, it will be easier to download the rpm and use that when docker image is created. 


 * [Download link:](http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.rpm)
 * Copy the rpm to the directory from where you are running the dockerfile. 
 * Make sure you have this rpm there before creating the dockerfile. 
 * Since the Dockerfile requires the same rpm, make sure you download the same rpm. **jdk-8u161-linux-x64.rpm**
 * If you are using a different rpm, please edit the Dockerfile to use that. 
