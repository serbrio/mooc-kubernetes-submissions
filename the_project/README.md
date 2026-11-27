# Log output app

Build image:
> docker build -t todo-app .

Import local image to be able to use it locally:
> k3d image import todo-app

Deploy application:
> kubectl apply -f manifests/deployment.yaml

Confirm the app is running in cluster:
> kubectl logs todo-dep-...
