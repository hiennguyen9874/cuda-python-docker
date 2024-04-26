ARG CUDA_VERSION=12.0.1-runtime-ubuntu20.04
FROM nvcr.io/nvidia/cuda:$CUDA_VERSION as base

ENV TZ=Asia/Ho_Chi_Minh \
    DEBIAN_FRONTEND=noninteractive

ARG PYTHON_VERSION=3.10

RUN apt-get update -yq && \
    apt-get install -yq --no-install-recommends software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get install -yq python$PYTHON_VERSION python3-pip python$PYTHON_VERSION-distutils \
    python$PYTHON_VERSION-dev python$PYTHON_VERSION-venv python-is-python3 && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN ln -sf /usr/bin/python3.8 /usr/bin/python && \
    ln -sf /usr/bin/python3.10 /usr/bin/python3 && \
    ln -sf /usr/bin/pip3 /usr/bin/pip
