#!/bin/bash
# Заменяем плейсхолдеры переменными окружения и создаём конфигурационный файл
envsubst < /meilisync/sync.example.yaml > /meilisync/sync.yaml

# Запускаем основное приложение
exec "$@"
