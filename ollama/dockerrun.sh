#!/bin/zsh
docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
# docker exec -it ollama ollama run gemma2
# docker exec -it ollama ollama stop gemma2
