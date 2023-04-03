# Useful commands

# Docker commands

---

## Basic commands

### download image

    docker pull imageName
    
## show downloaded images 

    docker images
    
## show containers running

    docker ps
    
(show all containers ---> -a)
    
## start container

    docker start containerID

## query container logs

    docker logs containerID
    
## create container 

    docker run image
    
## create container and use specific port

    docker run -p 3000:3000 imageName

(run in background ---> -d)

## run command in container running

    docker exec -it containerID sh
    
## stop container

    dockar stop containerID
    
## build a new image

    docker build -t imageName
    
## rename image and add version

    docker tag containerID user/imageName:v2 
   
## upload image to dockerhub 

    docker pushh user/imageName:v2
    
---

# docker-compose example

        version: "3.7"

        services:

        #docker run -dp 3000:3000 --network networkName -e MYSQL_HOST}mysql -e MYSQL_USER=root -e MYSQL_PASSWORD=password -e MYSQL_DB=dbName imageName:v2

        app:
            image: user/imageName:v2
            ports:
            - 3000:3000
            enviroments:
            MYSQL_HOST: mysql
            MYSQL_USER: root
            MYSQL_PASSWORD: password
            MYSQL_DB: dbName

        #docker run -d --networ networkName --network-alias mysql -v todo-mysql-data:var/lib/mysql -e MYSQL_ROOT_PASSWORD=password -e           MYSQL_DATABASE=dbName mysql:5.7

        mysql:
            image: mysql:5.7
            volumes:
            - ./todo-mysql-data/var/lib/mysql
            enviroments:
            MYSQL_PASSWORD: password
            MYSQL_DB: dbName

- docker-compose up -d
- docker-compose down
