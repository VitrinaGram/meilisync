#!/bin/bash
# Display the current directory structure
ls -l /meilisync

# Заменяем плейсхолдеры переменными окружения и создаём конфигурационный файя

envsubst < /meilisync/configs/sync.example.yaml > /meilisync/configs/sync.yaml

# Запускаем основное приложение
exec "$@"
