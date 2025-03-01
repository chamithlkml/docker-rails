# README

## Setup Guide

```bash
git clone git@github.com:chamithlkml/docker-rails.git
cd docker-rails
mv ./sample-env .env
# Run bin/rails secret to generate a value for SECRET_KEY_BASE
docker compose build
docker compose up
```

## Notes

- This creates a development and test postgres databases as specified in `.env` file.

- In the development phase try to restart `quoteapp` container in Docker desktop