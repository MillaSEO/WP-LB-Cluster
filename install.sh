#!/bin/bash
echo "=== WP-LB-Cluster Installer ==="
apt-get update && apt-get install -y git curl
curl -sSL https://get.docker.com | sh

DIR="/root/WP-LB-Cluster"
rm -rf $DIR
git clone https://github.com/MillaSEO/WP-LB-Cluster.git $DIR

cd $DIR
docker compose up -d
echo "=== ГОТОВО! Кластер запущен. Откройте IP этого сервера в браузере. ==="
