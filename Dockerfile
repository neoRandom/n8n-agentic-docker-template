FROM node:22-bookworm-slim

RUN apt-get update && apt-get install -y \
    git \
    bash \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

ENV SHELL=/bin/bash

RUN mkdir -p /root/.claude

RUN npm install -g @anthropic-ai/claude-code mcp-remote

ENTRYPOINT [ "bash" ]