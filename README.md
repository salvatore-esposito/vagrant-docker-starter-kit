# A base for using Docker in a virtual machine managed by Vagrant

### How use it

You have to clone this repository using a name that match your project, for example if you hace create an ecommerce you can use "my-project":
```sh
$ git clone https://github.com/salvatore-esposito/vagrant-docker-starter-kit my-project
````
after this go to my-project:

```sh
$ cd my-project
$ sudo chmod +x init.sh
$ ./init.sh
```

The script will ask you the name of your project, you can use the same as one used as root directory: my-project.

After all is finished you only digit:

```sh
$ vagrant up
```

Please note that this is a development environment, so Vagrant will use an insecure key to connect via ssh.
