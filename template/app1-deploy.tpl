apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: app1
  name: app1
spec:
  replicas: 1
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
        command: 
        - "bin/bash"
        - "-c"
        - "/usr/share/nginx/html/app.sh"
        env:
        - name: APPNAME
          value: "app1"
        ports:
        - containerPort: 80
        resources: {}
        volumeMounts:
          - name: app1
            mountPath: "/mnt/nfs"
      restartPolicy: Always
      volumes:
      - name: app1
        persistentVolumeClaim:
          claimName: nfs
status: {}