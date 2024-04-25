# Cuda python docker image

## Cuda 12.0.1 python3.10

- Build:

  ```
  DOCKER_BUILDKIT=1 docker build -t hiennguyen9874/cuda-python:12.0.1-runtime-ubuntu20.04-py3.10 \
      --build-arg CUDA_VERSION=12.0.1-runtime-ubuntu20.04 \
      --build-arg PYTHON_VERSION=3.10 \
      -f Dockerfile \
      .
  ```

- Push: `docker push hiennguyen9874/cuda-python:12.0.1-runtime-ubuntu20.04-py3.10`
