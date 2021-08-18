# Mlflow Server

Set up a server environment to run mlflow ui.

## Run

```sh
docker build -t mlflow-server .
```

```sh
docker run -dit -v /home/data/ryoto/:/data --rm -p 5000:5000 --name mlflow-server mlflow-server
```
