#!/bin/sh
#ACCOUNT_ID="1234567890"
#AWS_DEFAULT_REGION="us-east-1"
REPOSITORY_URI="titeixei"
IMAGE_REPO_NAME="nginx"
#docker pull nginx:latest
#aws ecr get-login-password --region $AWS_DEFAULT_REGION | docker login --username AWS --password-stdin $REPOSITORY_URI

if (docker ps -a | grep $REPOSITORY_URI/$IMAGE_REPO_NAME  | grep Exited); then
    docker ps -a | grep $REPOSITORY_URI/$IMAGE_REPO_NAME | grep Exited | cut -d " " -f1 | xargs -n1 -I % sh -c 'docker rm %' ;
    docker image ls | grep $REPOSITORY_URI/$IMAGE_REPO_NAME | cut -d " " -f1 | xargs -n1 -I % sh -c 'docker image rm %';
    docker build -t $REPOSITORY_URI/$IMAGE_REPO_NAME:latest .
    docker run -t --name $REPOSITORY_URI -p 8080:80 $REPOSITORY_URI/$IMAGE_REPO_NAME:latest
fi
#else
    #docker container ls | grep $REPOSITORY_URI/$IMAGE_REPO_NAME | cut -d " " -f1 | xargs -n1 -I % sh -c 'docker container stop %' &> /dev/null;
    #docker container ls | grep $REPOSITORY_URI/$IMAGE_REPO_NAME | cut -d " " -f1 | xargs -n1 -I % sh -c 'docker container rm %' &> /dev/null;
    #docker image ls | grep $REPOSITORY_URI/$IMAGE_REPO_NAME | cut -d " " -f1 | xargs -n1 -I % sh -c 'docker image rm %' &> /dev/null;

#fi
#docker ps -a | grep $USER | grep Exited | cut -d " " -f1 | xargs -n1 -I % sh -c 'docker rm %' &> /dev/null;
#docker container ls | grep $REPOSITORY_URI/$IMAGE_REPO_NAME | cut -d " " -f1 | xargs -n1 -I % sh -c 'docker container stop %' &> /dev/null;
#docker container ls | grep $REPOSITORY_URI/$IMAGE_REPO_NAME | cut -d " " -f1 | xargs -n1 -I % sh -c 'docker container rm %' &> /dev/null;

#docker tag nginx:latest $REPOSITORY_URI/$IMAGE_REPO_NAME:latest
#docker commit $REPOSITORY_URI/$IMAGE_REPO_NAME:latest &> /dev/null;
#docker push $REPOSITORY_URI/$IMAGE_REPO_NAME:latest &> /dev/null;
#docker run -t --name $USER -d$REPOSITORY_URI/$IMAGE_REPO_NAME:latest 
