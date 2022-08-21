
C:\Users\Abdelrazek\Desktop\app>npm init

                    This utility will walk you through creating a package.json file.
                    It only covers the most common items, and tries to guess sensible defaults.

                    See `npm help init` for definitive documentation on these fields
                    and exactly what they do.

                    Use `npm install <pkg>` afterwards to install a package and
                    save it as a dependency in the package.json file.

                    Press ^C at any time to quit.
                    package name: (app) awsrestart
                    version: (1.0.0)
                    description: awsrestart
                    entry point: (index.js)
                    test command:
                    git repository:
                    keywords: nodejs bootstrap express
                    author: https://abdelrazekrizk.github.io/
                    license: (ISC)
                    About to write to C:\Users\Abdelrazek\Desktop\app\package.json:

                    {
                      "name": "awsrestart",
                      "version": "1.0.0",
                      "description": "awsrestart",
                      "main": "index.js",
                      "scripts": {
                        "test": "echo \"Error: no test specified\" && exit 1"
                      },
                      "keywords": [
                        "nodejs",
                        "bootstrap",
                        "express"
                      ],
                      "author": "https://abdelrazekrizk.github.io/",
                      "license": "ISC"
                    }


                    Is this OK? (yes) y

C:\Users\Abdelrazek\Desktop\app>npm install

                    up to date, audited 1 package in 276ms

                    found 0 vulnerabilities

C:\Users\Abdelrazek\Desktop\app>npm i -s express 

                    npm i coverage-node

                    added 5 packages, and audited 63 packages in 5s

                    9 packages are looking for funding
                      run `npm fund` for details

                    found 0 vulnerabilities

C:\Users\Abdelrazek\Desktop\app>code app.js

C:\Users\Abdelrazek\Desktop\app>code Dockerfile

C:\Users\Abdelrazek\Desktop\app>code .dockerignore

# Build your Docker image

C:\Users\Abdelrazek\Desktop\app>docker build -t abdelrazekrizk/awsrestart .

                    [+] Building 8.0s (12/12) FINISHED
                    => [internal] load build definition from Dockerfile                                          0.7s 
                    => => transferring dockerfile: 32B                                                           0.1s 
                    => [internal] load .dockerignore                                                             1.0s 
                    => => transferring context: 34B                                                              0.0s 
                    => [internal] load metadata for docker.io/library/node:14-alpine                             2.5s 
                    => [auth] library/node:pull token for registry-1.docker.io                                   0.0s 
                    => [internal] load build context                                                             0.5s 
                    => => transferring context: 10.96kB                                                          0.1s 
                    => [1/6] FROM docker.io/library/node:14-alpine@sha256:4aff4ba0da347e51561587eba037a38db4eaa  0.0s 
                    => CACHED [2/6] RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/a  0.0s 
                    => CACHED [3/6] WORKDIR /home/node/app                                                       0.0s 
                    => CACHED [4/6] COPY package*.json ./                                                        0.0s 
                    => CACHED [5/6] RUN npm install                                                              0.0s 
                    => [6/6] COPY --chown=node:node . .                                                          1.6s 
                    => exporting to image                                                                        1.7s 
                    => => exporting layers                                                                       0.9s 
                    => => writing image sha256:13dc56db42cc42819652a0ed54d6a3f7cd62e5b205d5f317d3595b41fb2271cb  0.1s 
                    => => naming to docker.io/abdelrazekrizk/awsrestart                                          0.2s 

                    Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them

# Run your Docker image

C:\Users\Abdelrazek\Desktop\app>docker run --name awsrestart -p 80:3000 -d abdelrazekrizk/awsrestart

                    762cf70c0f202c751960308fda755ccb53faff53faa9772cde9074d7e33594a3

C:\Users\Abdelrazek\Desktop\app>docker container commit 762cf70c0f20 abdelrazekrizk/awsrestart:latset


C:\Users\Abdelrazek\Desktop\app>docker ps -a

                    CONTAINER ID   IMAGE                       COMMAND                  CREATED         STATUS
                    PORTS                  NAMES
                    762cf70c0f20   abdelrazekrizk/awsrestart   "docker-entrypoint.s…"   2 minutes ago   Up 2 minutes   
                    0.0.0.0:80->3000/tcp   awsrestart

# Push your Docker image

C:\Users\Abdelrazek\Desktop\app>docker image push abdelrazekrizk/awsrestart:latest

                    The push refers to repository [docker.io/abdelrazekrizk/awsrestart]
                    fc7f6fef0fde: Pushed
                    0905c2880598: Layer already exists
                    d510b0905d5f: Layer already exists
                    5f70bf18a086: Layer already exists
                    c2adca0b0739: Layer already exists
                    799bdbca4850: Layer already exists
                    f1f6e22747cf: Layer already exists
                    994393dc58e7: Layer already exists
                    latest: digest: sha256:1d13252f32c16f36d86b15fbf2898d456e6fd8d23c4b54e5592cac78757a3eee 
                    size: 2199  

# Docker exec run shell session inside the container

C:\Users\Abdelrazek\Desktop\app>docker exec -ti awsrestart pwd 

                    /home/node/app

C:\Users\Abdelrazek\Desktop\app>docker exec -ti awsrestart sh

                    ~/app $ cd ~
                    ~ $ ls -a
                    .             ..            .ash_history  .config       .npm          app
                    ~ $ cat .ash_history
                    cd ~
                    ls -a
                    cat .ash_history
                    ~ $ ls -la
                    total 28
                    drwxr-sr-x    1 node     node          4096 Aug 21 00:38 .
                    drwxr-xr-x    1 root     root          4096 Aug  9 21:03 ..
                    -rw-------    1 node     node            35 Aug 21 00:39 .ash_history
                    drwx--S---    3 node     node          4096 Aug 20 23:26 .config
                    drwxr-sr-x    4 node     node          4096 Aug 20 23:26 .npm
                    drwxr-sr-x    1 node     node          4096 Aug 20 23:26 app
                    ~ $ cd /
                    / $ ls -la
                    total 68
                    drwxr-xr-x    1 root     root          4096 Aug 21 00:09 .
                    drwxr-xr-x    1 root     root          4096 Aug 21 00:09 ..
                    -rwxr-xr-x    1 root     root             0 Aug 21 00:09 .dockerenv
                    drwxr-xr-x    1 root     root          4096 Aug  9 21:03 bin
                    drwxr-xr-x    5 root     root           340 Aug 21 00:09 dev
                    drwxr-xr-x    1 root     root          4096 Aug 21 00:09 etc
                    drwxr-xr-x    1 root     root          4096 Aug  9 21:03 home
                    drwxr-xr-x    1 root     root          4096 Aug  9 21:03 lib
                    drwxr-xr-x    5 root     root          4096 Aug  9 08:47 media
                    drwxr-xr-x    2 root     root          4096 Aug  9 08:47 mnt
                    drwxr-xr-x    1 root     root          4096 Aug  9 21:03 opt
                    dr-xr-xr-x  242 root     root             0 Aug 21 00:09 proc
                    drwx------    1 root     root          4096 Aug  9 21:03 root
                    drwxr-xr-x    2 root     root          4096 Aug  9 08:47 run
                    drwxr-xr-x    2 root     root          4096 Aug  9 08:47 sbin
                    drwxr-xr-x    2 root     root          4096 Aug  9 08:47 srv
                    dr-xr-xr-x   11 root     root             0 Aug 21 00:09 sys
                    drwxrwxrwt    1 root     root          4096 Aug  9 21:03 tmp
                    drwxr-xr-x    1 root     root          4096 Aug  9 21:03 usr
                    drwxr-xr-x    1 root     root          4096 Aug  9 08:47 var
                    / $

C:\Users\Abdelrazek\Desktop\app>docker exec -ti awsrestart sh

                    ~/app $ ls -la
                    total 64
                    drwxr-sr-x    1 node     node          4096 Aug 20 23:26 .
                    drwxr-sr-x    1 node     node          4096 Aug 21 00:38 ..
                    -rwxr-xr-x    1 node     node           560 Aug 20 23:08 app.js
                    drwxr-sr-x    1 node     node          4096 Aug 20 23:26 node_modules
                    -rwxr-xr-x    1 node     node         39685 Aug 20 23:07 package-lock.json
                    -rwxr-xr-x    1 node     node           363 Aug 20 23:07 package.json
                    drwxr-xr-x    3 node     node          4096 Aug 20 23:26 views
                    ~/app $ cat app.js
                    const express = require('express');
                    const app = express();
                    const router = express.Router();

                    const path = __dirname + '/views/';
                    const port = 3000;

                    router.use(function (req,res,next) {
                      console.log('/' + req.method);
                      next();
                    });

                    router.get('/', function(req,res){
                      res.sendFile(path + 'index.html');
                    });

                    router.get('/sharks', function(req,res){
                      res.sendFile(path + 'sharks.html');
                    });

                    app.use(express.static(path));
                    app.use('/', router);

                    app.listen(port, function () {
                      console.log('Example app listening on port 3000!')
                    ~/app $

# kubernetes Run application on container

C:\Users\Abdelrazek\Desktop\app>kubectl version

                    WARNING: This version information is deprecated and will be replaced with the output from kubectl version --short.  Use --output=yaml|json to get the full version.
                    Client Version: version.Info{Major:"1", Minor:"24", GitVersion:"v1.24.2", GitCommit:"f66044f4361b9f1f96f0053dd46cb7dce5e990a8", GitTreeState:"clean", BuildDate:"2022-06-15T14:22:29Z", GoVersion:"go1.18.3", Compiler:"gc", Platform:"windows/amd64"}
                    Kustomize Version: v4.5.4
                    Server Version: version.Info{Major:"1", Minor:"24", GitVersion:"v1.24.2", GitCommit:"f66044f4361b9f1f96f0053dd46cb7dce5e990a8", GitTreeState:"clean", BuildDate:"2022-06-15T14:15:38Z", GoVersion:"go1.18.3", Compiler:"gc", Platform:"linux/amd64"}

C:\Users\Abdelrazek\Desktop\app>kubectl  --help 

                    kubectl controls the Kubernetes cluster manager.

                    Find more information at:
                    https://kubernetes.io/docs/reference/kubectl/overview/

                    Basic Commands (Beginner):
                      create          Create a resource from a file or from stdin
                      expose          Take a replication controller, service, deployment or pod and
                    expose it as a new Kubernetes service
                      run             Run a particular image on the cluster
                      set             Set specific features on objects

                    Basic Commands (Intermediate):
                      explain         Get documentation for a resource
                      get             Display one or many resources
                      edit            Edit a resource on the server
                      delete          Delete resources by file names, stdin, resources and names, or        
                    by resources and label selector

                    Deploy Commands:
                      rollout         Manage the rollout of a resource
                      scale           Set a new size for a deployment, replica set, or replication
                    controller
                      autoscale       Auto-scale a deployment, replica set, stateful set, or
                    replication controller

                    Cluster Management Commands:
                      certificate     Modify certificate resources.
                      cluster-info    Display cluster information
                      top             Display resource (CPU/memory) usage
                      cordon          Mark node as unschedulable
                      uncordon        Mark node as schedulable
                      drain           Drain node in preparation for maintenance
                      taint           Update the taints on one or more nodes

                    Troubleshooting and Debugging Commands:
                      describe        Show details of a specific resource or group of resources
                      logs            Print the logs for a container in a pod
                      attach          Attach to a running container
                      exec            Execute a command in a container
                      port-forward    Forward one or more local ports to a pod
                      proxy           Run a proxy to the Kubernetes API server
                      cp              Copy files and directories to and from containers
                      auth            Inspect authorization
                      debug           Create debugging sessions for troubleshooting workloads and
                    nodes

                    Advanced Commands:
                      diff            Diff the live version against a would-be applied version
                      apply           Apply a configuration to a resource by file name or stdin
                      patch           Update fields of a resource
                      replace         Replace a resource by file name or stdin
                      wait            Experimental: Wait for a specific condition on one or many
                    resources
                      kustomize       Build a kustomization target from a directory or URL.

                    Settings Commands:
                      label           Update the labels on a resource
                      annotate        Update the annotations on a resource
                      completion      Output shell completion code for the specified shell (bash,
                    zsh or fish)

                      alpha           Commands for features in alpha
                      api-resources   Print the supported API resources on the server
                      api-versions    Print the supported API versions on the server, in the form of        
                    "group/version"
                      config          Modify kubeconfig files
                      plugin          Provides utilities for interacting with plugins
                      version         Print the client and server version information

                    Usage:
                      kubectl [flags] [options]

                    Use "kubectl <command> --help" for more information about a given command.
                    Use "kubectl options" for a list of global command-line options (applies to all
                    commands).

C:\Users\Abdelrazek\Desktop\app>kubectl get service

                    NAME             TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE
                    awsrestartshop   ClusterIP   10.97.128.24   <none>        3000/TCP   11m
                    kubernetes       ClusterIP   10.96.0.1      <none>        443/TCP    23h

# Kubernetes Deployment

C:\Users\Abdelrazek\Desktop\app>kubectl apply -f ./load-balancer-example.yaml 

                    deployment.apps/awsrestart created

C:\Users\Abdelrazek\Desktop\app>kubectl expose deployment awsrestart --type=LoadBalancer --name=my-service

                    service/my-service exposed

C:\Users\Abdelrazek\Desktop\app>kubectl get services my-service

                    NAME         TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
                    my-service   LoadBalancer   10.97.179.116   localhost     3000:31795/TCP   11s

C:\Users\Abdelrazek\Desktop\app>kubectl proxy

                    Starting to serve on 127.0.0.1:8001
                    E0821 19:14:22.410012   24408 proxy_server.go:147] Error while proxying request: context canceled
                    E0821 19:14:22.412014   24408 proxy_server.go:147] Error while proxying request: context canceled
                    E0821 19:14:22.410012   24408 proxy_server.go:147] Error while proxying request: context canceled

# Clean Resources

C:\Users\Abdelrazek\Desktop\app>kubectl get pods 

          NAME                              READY   STATUS    RESTARTS   AGE
          awsrestart-dd9c8645d-6fswm        1/1     Running   0          5h14m
          awsrestart-dd9c8645d-cqrdn        1/1     Running   0          5h14m
          awsrestart-dd9c8645d-dtzsf        1/1     Running   0          5h14m
          awsrestart-dd9c8645d-hg9vg        1/1     Running   0          5h14m
          awsrestart-dd9c8645d-pqsx5        1/1     Running   0          5h14m

C:\Users\Abdelrazek\Desktop\app>kubectl get deployments

        NAME              READY   UP-TO-DATE   AVAILABLE   AGE
        awsrestart        5/5     5            5           5h15m
        awsrestartshop1   1/1     1            1           6h19m

C:\Users\Abdelrazek\Desktop\app>kubectl get service

          NAME             TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
          awsrestartshop   ClusterIP      10.97.128.24    <none>        3000/TCP         5h38m
          kubernetes       ClusterIP      10.96.0.1       <none>        443/TCP          28h
          my-service       LoadBalancer   10.97.179.116   localhost     3000:31795/TCP   5h15m

C:\Users\Abdelrazek\Desktop\appkubectl delete service awsrestartshop my-service

          service "awsrestartshop" deleted
          service "my-service" deleted 

C:\Users\Abdelrazek\Desktop\app>kubectl delete deployments awsrestart awsrestartshop1

        deployment.apps "awsrestart" deleted
        deployment.apps "awsrestartshop1" deleted

C:\Users\Abdelrazek\Desktop\app>docker ps -a

        CONTAINER ID   IMAGE                       COMMAND                  CREATED        STATUS        PORTS                  NAMES
        762cf70c0f20   abdelrazekrizk/awsrestart   "docker-entrypoint.s…"   10 hours ago   Up 5 hours    0.0.0.0:80->3000/tcp   awsrestart

C:\Users\Abdelrazek\Desktop\app>docker stop 762cf70c0f20

       762cf70c0f20

C:\Users\Abdelrazek\Desktop\app>docker rm 762cf70c0f20 

       762cf70c0f20
       
# Resources

How To Build a Node.js Application with Docker

          https://www.digitalocean.com/community/tutorials/how-to-build-a-node-js-application-with-docker

Docker Run: How to create a Docker image for an application

          https://www.mirantis.com/blog/how-do-i-create-a-new-docker-image-for-my-application/

Docker run shell session inside the container

          https://docs.docker.com/engine/reference/commandline/exec/
          a shell session inside the container.

Run your image as a container

          https://docs.docker.com/language/golang/run-containers/

Run your first application on Kubernetes

          https://medium.com/@m.sedrowski/run-your-first-application-on-kubernetes-e54d5194e84b#:~:text=To%20run%20an%20application%20in,called%20Pod%20to%20manage%20containers.

node/14-alpine3.16

          https://hub.docker.com/layers/node/library/node/14-alpine3.16/images/sha256-9e9730aa7994a7d4deb26e4d5784d26c0d2c01d28de7833872cac6b8bd23a263?context=explore