# Log output app

Build image:
> docker build -t log-output-app .

Import local image to be able to use it locally:
> k3d image import log-output-app

Deploy application:
> kubectl create deployment log-output-dep --image=log-output-app

Edit imagePullPolicy from default 'Always' to 'IfNotPresent'\
to allow the local image to be used:
> kubectl edit deployment log-output-dep

Confirm the app is running in cluster:
> kubectl logs log-output-...
