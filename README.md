# laravel-docker

Hello, and welcome to this new project.
If you have a laravel application hosted on Virtual Machine (VMs), and you want to migrate that application to docker's containers... this is the right place.
We all know how can the VMs costs more than containers in both money and resources as well.

<h3>Docker-compose</h3>
You can achieve the goal without using ```docker-compose```, but it will require more unecessary work, instead we'll be using the simple docker-compose. It's a really simple way of creating and linking containers to each other... For example all the containers we will create today are linked under the same network ```laravel```... If someone tried to create another container and linked it to one of the container under the laravel network, it won't work... We basically isolated the containers under that network(a little bit of security).
    <h5>Installing docker-compose</h5>
      ON WINDOWS : if you already have the docker engine installed on windows, that is enough... docker-compose is already installed on your system... If not just visit this link and download and install docker-engine. ```https://hub.docker.com/editions/community/docker-ce-desktop-windows/```
      ON LINUX : You can check the following documentation on how to install it : ```https://docs.docker.com/compose/install/```
      
<h3>Building and Running the image</h3>
After getting ready by  installing docker-compose... Now you will need to copy your application to the ```src``` folder in the root of the repository.
Then run the following commands :
```
docker-compose build
//wait for the image's building
docker-compose up -d //running the image in the background
```
NB : Here's each container with it's port on the machine and on the container :
| Container's Name | Service | Container's Port | Machine's Port |
| ---------------- | ------- | ---------------- | -------------- |
| nginx | nginx | 80 | 80 |
| mysql | mysql | 3306 | 3306 |
| phplaravel | phpmyadmin | 80 | 8081 |
| php | php | 9000 | 9000 |
| composer | composer | x | x |
| artisan | artisan | x | x|
