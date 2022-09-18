apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: app2
  name: app2
spec:
  replicas: 1
  selector:
    matchLabels:
      app: app2
  strategy: {}
  template:
    metadata:
      labels:
        app: app2
    spec:
      containers:
      - image: accerq/app1:VERSION
        name: app2
        command: 
        - "/bin/bash"
        - "-c"
        - "echo"
        - "<br><h1> ${HOSTNAME} </h1></br>"
        - ">"
        - "/usr/share/nginx/html/${APPNAME}.html"
        env:
        - name: APPNAME
          value: "app2"
        ports:
        - containerPort: 80
        resources: {}
status: {}