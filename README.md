[![CircleCI](https://circleci.com/gh/JoseBerrocal/udacity_project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/JoseBerrocal/udacity_project-ml-microservice-kubernetes)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### 1. Running the application in a standalone environment

```bash
python app.py
#Run the script in a new terminal
sh make_prediction
```
### 2. Running the application in a docker

```bash
#Execute the script to deploy a container runing app.py
./run_docker.sh
#Modify the port to 5001 and the IP to 127.0.0.1 in "make_prediction.sh"
#Run the script in a new terminal
sh make_prediction
```

### 2. Running the application in kubernetes

```bash
#Execute as root
minikube start --vm-driver=none 
./run_kubernetes.sh
#Get the Intenal IP of the service "ml-microservice-http"
kubectl get services
#Modify the port to 80 and the IP in "make_prediction.sh" and execute it 
sh make_prediction.sh
```



### Kubernetes Steps

* Setup and Configure [Docker](https://docs.docker.com/install/) locally
* Setup and Configure [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) locally
* Setup and Configure [Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl/) or [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) locally.  Minikube contain Kubernetes
* Create Flask app in Container. [Example](https://runnable.com/docker/python/dockerize-your-flask-application)
```bash
#Create your docker container locally with the flask application
./run_docker.sh
#Upload the container to the docker repository
./upload_docker.sh
```
* Run via kubectl ([Reference](https://kubernetes.io/docs/reference/kubectl/cheatsheet/))
```bash
minikube start --vm-driver=none 
./run_kubernetes.sh
```