# Teamcity agent for Symfony and php projects

Docker container for building php apps with focus on Symfony and Sylius based on [jetbrains/teamcity-minimal-agent](https://hub.docker.com/r/jetbrains/teamcity-minimal-agent/) image

## Installation
```bash
docker run -d -e SERVER_URL="<server-url:8111>" -e AGENT_NAME="<agent-name>" --restart unless-stopped fabrik/teamcity-agent-php
```

## aditional configs
- agent.type=docker
- date.timezone = Europe/Bratislava

> this install same php environment as [Fabricio872/php-dev](https://github.com/Fabricio872/php-dev) installation script
