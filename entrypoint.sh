#!/bin/bash
# Display the current directory structure
ls -R /meilisync

# Заменяем плейсхолдеры переменными окружения и создаём конфигурационный файя

envsubst < /meilisync/sync.example.yaml > /meilisync/sync.yaml

# Запускаем основное приложение
exec "$@"
