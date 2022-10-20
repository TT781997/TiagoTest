# TiagoTest
Simple time application

## Build nginx docker image

$cd nginx/

$chmod +x nginx-test-dockerhub.sh

$./nginx-test-dockerhub.sh

http://localhost:8080/

## Terraform

$aws configure --profile <USER> #if its the case

#change the SESSION_NAME in assumerole.sh if you want to use a role
  
$chmod +x assumerole.sh

#change the vars.tf file

$terraform init; terraform plan

#check if everything looks good to you
  
$terraform apply
