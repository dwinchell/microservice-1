oc new-app https://github.com/dwinchell/microservice-1.git
oc create route edge microservice-1 --service=microservice-1 --port=8080-tcp --insecure-policy='Redirect'
