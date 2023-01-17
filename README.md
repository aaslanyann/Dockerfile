# Getting Started 

These instruction will cover usage information and for the docker container and for docker volumes.


#### Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)

* [OS X](https://docs.docker.com/mac/started)

* [Linux](https://docs.docker.com/linux/started)


# Commands

* Container with the volume 

1. First of all, we create an image (go to in the folder with the dockerfile).

```shell
docker build -t yourimage:latest .
```

2. Secondly, run the container.

* Container with the volume.

```shell
docker run -d -p 80:80 -v "volumeName":/var/www/html --rm "imageName"
```

* Container with the mounted directory.

```shell
docker run -d -p 80:80 -v "Path to folder with dockerfile":/var/www/html --rm "imageName"
```

# Test

* Container with the Volume

1.We go into the container.

```shell
docker exec -it "containerId" /bin/bash
```

2.Go to the folder that is specified for the volume.

```shell
cd /var/www/html
```

3.Add some text to our html file.

```shell
echo sometext >> index.html
```

Our text has been added to the web site.

4.Exit the container and disable container.

* Exit

```shell
exit
```

* Stop the container

```shell
docker stop "containerId"
```

5.Re-enable the container and see if your text you added is removed

```shell
docker run -d -p 80:80 -v "volumeName":/var/www/html --rm "imageName"
```

* Container with the mounted directory 

1. Go to the folder with the dockerfile.

2. Add some text to our html file.

```shell
echo sometext >> index.html
```

3. Refresh the web sitr and see if your text is added there.

##### If it doesn't work, then you did something wrong, contact me, I'll help you.

* My telegram @mmonteroo


