# Docker multi-stage

## Development

**Build:**

```bash
docker build . -t awesome-app --target development --no-cache
```

**Run with `docker compose`:**

```bash
docker compose up
```

**Run with `docker run`:**

```bash
docker run --env-file ./.env.development -p 3000:3000 awesome-app
```

## Production

**Build:**

```bash
docker build . -t awesome-app --target development --no-cache
```

**Run with `docker compose`:**

```bash
docker compose -f ./docker-compose.prod.yml up
```

**Run with `docker run`:**

```bash
docker run --env-file ./.env -p 3000:3000 awesome-app
```
