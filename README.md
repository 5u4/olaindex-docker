# OLAINDEX Docker

## OLAINDEX

https://github.com/WangNingkai/OLAINDEX

## Set Up

1. Edit env file

```bash
cp .env.example .env
```

https://github.com/WangNingkai/OLAINDEX/blob/master/.env.example

2. Create database

```bash
touch db/database.sqlite
```

3. Start server

```bash
docker-compose up --build -d
```

4. Configure app

```bash
docker-compose exec core php artisan key:generate
docker-compose exec core php artisan od:install
docker-compose exec core php artisan cache:clear
```
