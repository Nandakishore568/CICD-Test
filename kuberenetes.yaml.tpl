apiVersion: apps/v1
kind: Deployment
metadata:
  name: tf-gke
  labels:
    app: tf-gke
spec:
  replicas: 1
  selector:
    matchLabels:
      app: tf-gke
  template:
    metadata:
      labels:
        app: hello-cloudbuild
    spec:
      containers:
      - name: tf-gke
        image: gcr.io/engaged-builder-331710/hello-world
        ports:
        - containerPort: 8080
---
kind: Service
apiVersion: v1
metadata:
  name: tf-gke
spec:
  selector:
    app: tf-gke
  ports:
  - protocol: TCP
    port: 80
    targetPort: 8080
  type: LoadBalancer
