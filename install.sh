NAME=$1
oc new-app https://github.com/dwinchell/microservice-1.git --name="${NAME}"
oc create route edge "${NAME}" --service="${NAME}" --port=8080-tcp --insecure-policy='Redirect'
oc set env deployment/${NAME} HTML_TITLE="${NAME}"
