# Editor docker

## Requirements

- Linux >= 16.04
- Docker >= 17.12
- Git

## Install

- `cp env-example .env`
- Add the domain to the `/etc/hosts` file
`127.0.0.1  editor.local`:
```
sudo sed -i '1s/^/127.0.0.1       editor.local\n/' /etc/hosts
```

- Create container's settings from examples:

```
cp mysql/docker-entrypoint-initdb.d/createdb.sql.example mysql/docker-entrypoint-initdb.d/createdb.sql
```
```
cp nginx/sites/editor.conf.example nginx/sites/editor.conf
```
```
cp php-worker/supervisord.d/laravel-worker.conf.example php-worker/supervisord.d/laravel-worker.conf
```
- `docker-compose build nginx mysql php-worker`

## Development

Start docker containers:

`docker-compose up -d nginx mysql php-worker`

Open your browser with enabled port:

`http://editor.local:82`