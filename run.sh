#!/bin/sh
echo "=== 1. run.sh 実行開始 ==="

echo "2. Prisma のデータベース反映を実行中..."
npx prisma db push || { echo "❌ ERROR: prisma db push に失敗しました"; exit 1; }

echo "3. Prisma クライアントを生成中..."
npx prisma generate || { echo "❌ ERROR: prisma generate に失敗しました"; exit 1; }

echo "4. アプリケーションサーバーを起動します..."
node src/server.js