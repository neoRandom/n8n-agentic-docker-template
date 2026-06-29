#!/bin/bash

echo "> Creating folders 'agent', 'n8n', 'workspace/docs' and 'workspace/prompts'..."
mkdir -p agent n8n workspace/docs workspace/prompts

if [ -f ".env" ]; then
    echo "> File '.env' already exists, skipping creation..."
else
    echo "> Copying '.env.example' to '.env'..."
    cp -n .env.example .env
fi

echo
echo "Manual setup required:"
echo "- Verify and configure '.env', 'Dockerfile' and 'docker-compose.yaml' files"
echo "- Depending on your selected AI Agent (Claude by default), you will need to setup the 'agent/settings.json' file to implement the MCP integration with n8n"
