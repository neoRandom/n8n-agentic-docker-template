# n8n Agentic Docker Template

A Docker-based template for running n8n alongside a cloud-based AI agent workspace. The stack includes an n8n service, a container for the agent runtime, and mounted folders for persistent agent and workspace data.

It gives you a repeatable starting point for building agent-assisted automations without tying the project to a single model provider. The default setup uses Claude tooling, but the structure is intended to support other compatible agent and MCP integrations as well.

## How to use

> Warning: run the setup steps at "How to setup" before starting the stack.

### Quick start
Use `.scripts/run.sh` to start Docker, bring up n8n, and launch the agent in one step.

### Manual flow
1. Start n8n with `docker compose up -d n8n`.
2. Open n8n in your browser at `http://localhost:5678`.
3. Run the agent container with `docker compose run --rm agent` when you want an interactive session.
4. Stop the services with `docker compose down` when you are done.

### Working directories
- Use `workspace/` for shared prompts, docs, and working files.
- Use `agent/` for persistent agent configuration and local runtime state.

## How to setup

1. Run `.scripts/setup.sh` to create `agent/`, `n8n/`, and `workspace/docs` and `workspace/prompts`, and to copy `.env.example` to `.env` if needed.
2. Set `AGENT_API_KEY` in `.env`.
3. Review `docker-compose.yaml` and `Dockerfile` if you need to adjust ports, mounts, or the agent runtime.
4. Follow the manual setup notes printed by `.scripts/setup.sh`, including the optional `agent/settings.json` configuration for MCP integration.
5. Use `.scripts/run.sh` to start Docker, bring up n8n, and launch the agent container in one step.
