# Docker example

Docker must be installed on the system https://docs.docker.com/installation/#installation

# Docker commands

To list actual docker images

```docker images```

To build a docker file

```docker build -t "centos7-base" .```

To run the image ( --rm remove the container after exit, -t attach a terminal, -i interactive)

```docker run --rm -t -i centos7-base```

To override default command

```docker run --rm -t -i centos7-base /bin/bash```

To list active containers

```docker ps```

To display stdout

```docker logs ID```

To execute a command inside a running container

```docker exec -t -i ID ps aux```

To execute two containers with limited cpu --cpuset=0 forces execution in first cpu, --cpu-shares=n sets relative share

```docker run --rm -t --cpuset=0 --cpu-shares=512 centos7-base```
```docker run --rm -t --cpuset=0 --cpu-shares=1024 centos7-base```