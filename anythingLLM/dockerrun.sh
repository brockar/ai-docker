#!/bin/bash
export STORAGE_LOCATION=/home/brockar/code/ai/anythingLLM/data/ &&
  mkdir -p $STORAGE_LOCATION &&
  touch "$STORAGE_LOCATION/.env" &&
  docker run -d -p 3001:3001 \
    --cap-add SYS_ADMIN \
    -v ${STORAGE_LOCATION}:/app/server/storage \
    -v ${STORAGE_LOCATION}/.env:/app/server/.env \
    -e STORAGE_DIR="/app/server/storage" \
    --add-host=host.docker.internal:host-gateway \
    --cap-add SYS_ADMIN \
    --name anythingLLM \
    mintplexlabs/anythingllm
