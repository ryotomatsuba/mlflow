# Mlflow Server

Set up a server to run mlflow ui.

## Run

### build docker image

```sh
docker build -t mlflow-server --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) .
```

### run docker container

```sh
docker run -dit -v /home/data/ryoto/:/data --rm --network=host --name mlflow-server mlflow-server
```

### ssh port forward (optional)
run this command **on your local machine**

```sh
ssh -L 5000:localhost:5000 virtus 
```

you can visit http://localhost:5000/ to see result
