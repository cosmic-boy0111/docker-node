# we want to create an image using the files present in docker-node project
# which has node.js package main.js and package-lock

# step-1 -> create a base image here we choose ubuntu as base image
#           or you may say that operating system
#           to run out image in container
FROM ubuntu

# step-2 -> then we want to install node.js in this or you may say
#           we want to install required software to run this application
#           so these are the steps to install node.js in ubuntu
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

# step-3 -> then we want to copy our code in this image or 
#           you may say that we want to transfer our code files
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js

# step-4 -> copying node modules through command
RUN npm install

ENTRYPOINT [ "node" , "main.js" ]




