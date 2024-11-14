#!/bin/zsh
docker run -d -p 3000:8080 --gpus all --add-host=host.docker.internal:host-gateway \
  -v open-webui:/app/backend/data --name open-webui \
  --name openwebui \
# --restart always 
  ghcr.io/open-webui/open-webui:cuda

