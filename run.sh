#!/bin/sh
echo "=== データベースのスキーマを適用中... ==="
npx prisma db push --accept-data-loss

echo "=== アプリケーションサーバーを起動します ==="
node src/server.js