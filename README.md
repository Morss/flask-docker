# flask-docker
Frontend and API server configuration in Vagrant/Docker. To be used as a jump off point for other projects.


### With Vagrant
With Vagrant you can boot up a VM, build and run the image with one command. To do this, you'll need Vagrant installed with a VirtualBox backend.
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
