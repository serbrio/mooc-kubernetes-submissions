# Log output app

Build image:
> docker build -t todo-app .

Import local image to be able to use it locally:
> k3d image import todo-app

Deploy application:
> kubectl create deployment todo-dep --image=todo-app

Edit imagePullPolicy from default 'Always' to 'IfNotPresent'\
to allow the local image to be used:
> kubectl edit deployment todo-dep

Confirm the app is running in cluster:
> kubectl logs todo-dep-...
