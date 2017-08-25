# flask-docker
Example code to run a python flask app in a docker container. To be used as a jump off point for other projects.


### With Vagrant
With vagrant you can boot up a vm, build and run the image with one command:
```
$ vagrant up
```

### Build and run the flask app
With docker you can build and run the image yourself:
```
$ docker build -t flaskapp /vagrant/flaskapp
$ docker build -t frontend /vagrant/frontend
$ docker run -d -p 8081:80 --name flaskapp flaskapp
$ docker run -d -p 8080:80 --name frontend --link flaskapp:flaskapp frontend
```
