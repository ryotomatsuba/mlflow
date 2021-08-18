# Mlflow Server

Set up a server to run mlflow ui.

## Run

```sh
docker build -t mlflow-server --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) .
```

```sh
docker run -dit -v /home/data/ryoto/:/data --rm --network=host --name mlflow-server mlflow-server
```
