# wg_easy_nginx_ssl_docker

## Для чего

Запуск wg easy с nginx с ssl, если нет доменного имени

## Как?

создаём файл окружения и заполняем его

```.env
IP_ADDRESS=127.0.0.1
WG_PORT=51820
PASSWORD_HASH='$2b$12$coPqCsPtcFO.Ab99xylBNOW4.Iu7OOA2/ZIboHN6/oyxca3MWo7fW'
```

> Хеш для версии 14 вычисляется согласно [1](https://github.com/wg-easy/wg-easy/blob/v14/How_to_generate_an_bcrypt_hash.md), насчёт версии 15 походу также.
> то есть для пароля вызываем

```bash
>>> docker run ghcr.io/wg-easy/wg-easy:latest wgpw (пароль)
PASSWORD_HASH='$2a$12$1m.uDBDLeBrx10h5Gko5a.Y9w6KAdNwd8gru35Sxq/Rm1kKSVpY5.'
```

поднимаем docker-compose

```bash
docker-compose up 
```

