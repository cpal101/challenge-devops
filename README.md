# Sellics DevOps challenge


## The Microservice

You would find here a dummy microservice that exposes a single REST endpoint

Input: an Amazon Keyword
Output: a search-volume estimate on a 0-100 scale

The service uses Java 8.

Example API Request:

REQUEST GET ```http://<ip_here>:8080/estimate?keyword=linux```

RESPONSE
```
{
	“keyword”:”linux”,
	“score”:80
}
```

## The Challenge - part 1

Refer the file service.sh for some build scripts for the solution.

The functions dev_build() and dev_run() have been filled out for you - they build and deploy the solution on your local environment respectively.

You have been provided with an incomplete Dockerfile that creates the image and sets up dependencies. Please fill out the rest of the script such that it successfully builds and deploys the application on any Ubuntu 16.04 Docker image.

Additionally, fill out the functions docker_build() and docker_run() as per the below requirements so as to build & run the application on a local Docker installation.

```
./service.sh           : prints usage
./service.sh dev_build : builds your app
./service.sh dev_run   : runs your app

./service.sh docker_build : packages your app into a docker image
./service.sh docker_run   : runs your app using a docker image
```

## The Challenge - part 2


You have been provided an AWS sandbox environment with credentials provided in the CSV file shared with you. The user has no permissions, please let us know the minimum viable permissions required (preferably as JSON, and restricted to one AWS region) in order to complete the following tasks -


- Configure security groups 
- Expose only port 8080 
- Set up two servers using Docker swarm/Kubernetes or any tool of your choice 
- Load balance the two servers having the same address using ELB


Having done that, execute the tasks! :)
