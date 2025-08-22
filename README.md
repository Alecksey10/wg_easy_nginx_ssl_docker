# wg_easy_nginx_ssl_docker

## Для чего

Запуск wg easy с nginx с ssl, если нет доменного имени

## Как?

создаём файл окружения и заполняем его

```.env
IP_ADDRESS=127.0.0.1
WG_PORT=51820
```

поднимаем docker-compose

```bash
docker-compose up 
```
