#!/bin/sh

# 1. Сгенерировать сертификат, если его нет
if [ ! -f /etc/nginx/ssl/selfsigned.crt ]; then
    echo "🔧 Сертификат не найден — генерирую..."
    /generate-cert.sh
fi

# 2. Запланировать автообновление через cron
echo "0 3 */10 * * /generate-cert.sh && nginx -s reload" > /etc/crontabs/root

# 3. Запустить cron + nginx
echo "🚀 Запуск crond и nginx..."
crond
nginx -g "daemon off;"
