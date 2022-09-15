apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: app1
  name: app1
spec:
  replicas: 3
  selector:
    matchLabels:
      app: app1
  strategy: {}
  template:
    metadata:
      labels:
        app: app1
    spec:
      containers:
      - image: accerq/app1:VERSION
        name: app1
        ports:
        - containerPort: 80
        resources: {}
status: {}
