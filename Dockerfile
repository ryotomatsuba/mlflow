FROM python:3.9.6-buster
WORKDIR /app
ARG USERNAME=duser
# python
ENV PIP_OPTIONS "--no-cache-dir --progress-bar off"
RUN pip install -U pip && \
    pip install ${PIP_OPTIONS} mlflow==1.17.0 && \
    pip install ${PIP_OPTIONS} -U setuptools
# duser setting
ARG USER_ID
ARG GROUP_ID
RUN addgroup --gid $GROUP_ID $USERNAME && \
    adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID $USERNAME && \
    adduser $USERNAME sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER $USERNAME
WORKDIR /data/Result
CMD ["mlflow","ui"]