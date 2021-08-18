FROM python:3.9.6-buster
WORKDIR /app
ARG USERNAME=duser
# python
ENV PIP_OPTIONS "--no-cache-dir --progress-bar off"
RUN pip install -U pip && \
    pip install ${PIP_OPTIONS} mlflow==1.17.0 && \
    pip install ${PIP_OPTIONS} -U setuptools
WORKDIR /data/Result
CMD ["mlflow","ui"]