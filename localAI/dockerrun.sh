#!/bin/bash
docker run -ti --name local-ai -p 8081:8080 --gpus all localai/localai:latest-aio-gpu-nvidia-cuda-12
