#PS>

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
$DOCKER_PATH="docker.io/abdelrazekrizk/awsrestart:v.1.1.1"

# Step 2:
# Run the Docker Hub container with kubernetes
#kubectl run --generator=run-pod/v1  --image=$DOCKER_PATH --port=80
kubectl create deployment awsrestartshop1 --image=$DOCKER_PATH --port=80
$Deployment_NAME=kubectl get deployment
Write-Output $Deployment_NAME
# Step 3:
# get the Pod name and store it in the POD_NAME environment variable"
$POD_NAME= kubectl get pods 
Write-Output $POD_NAME

# Step 4:
# Wait until your pod is running, check for "condition=ready"
# kubectl wait --for=condition=Ready pod/flaskprediction
# kubectl wait --for=condition=Ready pod/"${POD_NAME}" --timeout=45s
# kubectl wait --for=condition=Ready pod/echo "${POD_NAME}"
kubectl wait --for=condition=Ready pod/awsrestartshop1-8986b9bb8-fdhj7

# Step 5
# Creating a service Expose the kubectl pod container port=80 ,port=3000
# kubectl expose pod $POD_NAME --port=3000 --name=awsrestartshop
kubectl expose pod awsrestartshop1-8986b9bb8-fdhj7 --port=3000 --name=awsrestartshop
$service_NAME= kubectl get service
Write-Output $service_NAME

# Step 6:
# List kubernetes pods
kubectl get pods --sort-by='.status.containerStatuses[0].restartCount'

# Step 7:
# port-forward the container port to a host
# kubectl port-forward $POD_NAME 3000:80
kubectl port-forward awsrestartshop1-8986b9bb8-fdhj7 3000:80

# Step 8:
# log the pod
# kubectl logs pod/$POD_NAME
kubectl logs pod/awsrestartshop1-8986b9bb8-fdhj7