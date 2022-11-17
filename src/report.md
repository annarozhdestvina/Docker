# Report


## Part 1. Ready-made docker

- making shure that docker is installed and docker engine is running
- getting nginx:
    
    ![text](screenshots/part1/1.PNG)

- check for the docker image with 'docker images':

    ![text](screenshots/part1/2.PNG)

- run docker image with 'docker run -d [image_id|repository]' and check that the image is running with 'docker ps':

    ![text](screenshots/part1/3.PNG)

- view container information with 'docker inspect [container_id|container_name]':

    ![text](screenshots/part1/4.PNG)

- - size:
 
    ![text](screenshots/part1/5size.PNG)

- - ip:

    ![text](screenshots/part1/6ip.PNG)

- - list of mapped ports:

    ![text](screenshots/part1/7ports.PNG)


- stop docker image with 'docker stop [container_id|container_name]' and check that the image has stopped with 'docker ps'
    
    ![text](screenshots/part1/8stopps.PNG)


- run docker with mapped ports 80 and 443 on the local machine with 'run' command:

    ![text](screenshots/part1/9mappedPortsRun.PNG)


- check that the nginx start page is available in the browser at localhost:80:

    ![text](screenshots/part1/10startPage.PNG)


## Part 2. Operations with container

- creating:

    ![text](screenshots/part2/1create.PNG)


- read the nginx.conf configuration file inside the docker container with the 'exec' command:

    ![text](screenshots/part2/2readConf.PNG)


- create a nginx.conf file on a local machine:

    ![text](screenshots/part2/3createConf.PNG)


- configure it on the /status path to return the nginx server status page:
- - copying:
    ![text](screenshots/part2/4copyConfFromContainer.PNG)

- - configuring:
    ![text](screenshots/part2/5configureConf.PNG)

    Line 27 is commented because nginx takes other files of configurations which don't let location '/status' work properly.


- copy the created nginx.conf file inside the docker image using the 'docker cp' command and restart nginx inside the docker image with 'exec':

    ![text](screenshots/part2/6copyAndApplyConf.PNG)


- check that localhost:80/status returns the nginx server status page:

    ![text](screenshots/part2/7checkStatus.PNG)


- export the container to a container.tar file with the 'export' command:

    ![text](screenshots/part2/8export.PNG)


- stop the container:

    ![text](screenshots/part2/9stop.PNG)


- delete the image with 'docker rmi [image_id|repository]' without removing the container first:

    ![text](screenshots/part2/10deleteImage.PNG)


- delete stopped container:

    ![text](screenshots/part2/11deleteContainer.PNG)


- import the container back using the 'import' command:

    ![text](screenshots/part2/12import.PNG)


- run the imported container:

    ![text](screenshots/part2/13runImported.PNG)


- check that localhost:80/status returns the nginx server status page:

    ![text](screenshots/part2/14checkStatusImported.PNG)


## Part 3. Mini web server

![text](screenshots/part3/1pullingNginxContainer.PNG)

![text](screenshots/part3/2runNginxContainer.PNG)

![text](screenshots/part3/3openingContainer.PNG)

![text](screenshots/part3/4miniserver.PNG)

![text](screenshots/part3/5pathInContianer.PNG)

![text](screenshots/part3/6miniserverInside.PNG)

![text](screenshots/part3/7noGcc.PNG)

![text](screenshots/part3/8update.PNG)

![text](screenshots/part3/9installingGcc.PNG)

![text](screenshots/part3/10installingFcgi.PNG)

![text](screenshots/part3/11compiledAndLinkedServer.PNG)

![text](screenshots/part3/12installingSpawnFcgi.PNG)

![text](screenshots/part3/13runningMiniserver.PNG)

![text](screenshots/part3/14conf.PNG)

![text](screenshots/part3/15applyingConf.PNG)

![text](screenshots/part3/15curlRequest.PNG)

![text](screenshots/part3/16browserRequest.PNG)

![text](screenshots/part3/17confPath.PNG)


## Part 4. Your own docker

![text](screenshots/part4/1dockerfile.PNG)

![text](screenshots/part4/2scriptToRunServer.PNG)

![text](screenshots/part4/3conf.PNG)

![text](screenshots/part4/4removedAllImagesAndContainers.PNG)

![text](screenshots/part4/5buildOutput.PNG)

![text](screenshots/part4/6builtImage.PNG)

![text](screenshots/part4/7dockerRunAndResult.PNG)

![text](screenshots/part4/8confWithRedirection.PNG)

![text](screenshots/part4/9restartWithRedirectionAndResult.PNG)


## Part 5. Dockle


![text](screenshots/part5/0docklerOutput.PNG)

![text](screenshots/part5/1fixedDocklerOutput.PNG)

![text](screenshots/part5/2newConf.PNG)

![text](screenshots/part5/3fixedDockerfile.PNG)

![text](screenshots/part5/4_0buildImageFromFixedDockerfile.PNG)

![text](screenshots/part5/4_1removingEverythingCached.PNG)

![text](screenshots/part5/5builtImageFromFixedDockerfileAndResult.PNG)


## Part 6. Basic Docker Compose


![text](screenshots/part6/1dockerfileFCGI.PNG)

![text](screenshots/part6/2newRunServerScript.PNG)

![text](screenshots/part6/3dockerfileNginx.PNG)

![text](screenshots/part6/4conf.PNG)

![text](screenshots/part6/5creatingDockerNetwork.PNG)

![text](screenshots/part6/6connectedInNetworkAndResult.PNG)

![text](screenshots/part6/7stoppedContainers.PNG)

![text](screenshots/part6/8docker-compose.PNG)

![text](screenshots/part6/9docker-composeBuildOutput.PNG)

![text](screenshots/part6/10docker-composeUpAndResult.PNG)
